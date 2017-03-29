.class Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedEntriesNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap",
        "<TK;TV1;TV2;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 1979
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p2, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    .line 1980
    return-void
.end method

.method private transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2072
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntry(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1983
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1987
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1991
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1995
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1999
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2002
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2006
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected fromMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;"
        }
    .end annotation

    .prologue
    .line 2076
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;->fromMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method protected bridge synthetic fromMap()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1972
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2010
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2014
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1972
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2019
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2027
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2031
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2035
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2039
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2047
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2058
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2052
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1972
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2062
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 2066
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->fromMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->transformer:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1972
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;, "Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap<TK;TV1;TV2;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
