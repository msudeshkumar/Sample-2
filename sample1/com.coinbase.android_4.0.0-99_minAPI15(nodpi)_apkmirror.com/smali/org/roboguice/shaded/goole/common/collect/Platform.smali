.class final Lorg/roboguice/shaded/goole/common/collect/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method static mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/SortedMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/NavigableMap;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/NavigableMap;

    .end local p0    # "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0    # "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    :cond_0
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "reference":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 54
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    return-object v0
.end method

.method static tryWeakKeys(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .locals 1
    .param p0, "mapMaker"    # Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->weakKeys()Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
