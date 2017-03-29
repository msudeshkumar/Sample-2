.class public final Lorg/roboguice/shaded/goole/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntrySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$Values;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$ImprovedAbstractMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;,
        Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;
    }
.end annotation


# static fields
.field static final STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3451
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Collections2;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    return-void
.end method

.method static asEntryToEntryFunction(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Lorg/roboguice/shaded/goole/common/base/Function;
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
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;>;"
        }
    .end annotation

    .prologue
    .line 1865
    .local p0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$11;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$11;-><init>(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;
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
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<TK;TV1;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1806
    .local p0, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$7;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$7;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method static capacity(I)I
    .locals 1
    .param p0, "expectedSize"    # I

    .prologue
    .line 204
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 205
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 206
    add-int/lit8 v0, p0, 0x1

    .line 211
    :goto_0
    return v0

    .line 208
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    .line 209
    div-int/lit8 v0, p0, 0x3

    add-int/2addr v0, p0

    goto :goto_0

    .line 211
    :cond_1
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3442
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-ne p0, p1, :cond_0

    .line 3443
    const/4 v1, 0x1

    .line 3448
    :goto_0
    return v1

    .line 3444
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 3445
    check-cast v0, Ljava/util/Map;

    .line 3446
    .local v0, "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 3448
    .end local v0    # "o":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;*>;TK;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->KEY:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static keyIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;*>;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3516
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static newIdentityHashMap()Ljava/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v1, 0x0

    .line 3359
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3361
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3365
    :goto_0
    return v1

    .line 3362
    :catch_0
    move-exception v0

    .line 3363
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 3364
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v1, 0x0

    .line 3344
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3346
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3350
    :goto_0
    return-object v1

    .line 3347
    :catch_0
    move-exception v0

    .line 3348
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 3349
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 3350
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<*TV;>;"
    const/4 v1, 0x0

    .line 3374
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3380
    :goto_0
    return-object v1

    .line 3377
    :catch_0
    move-exception v0

    .line 3378
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 3379
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 3380
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method static toStringImpl(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3458
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Collections2;->newStringBuilderForCollection(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3460
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/Maps;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;

    invoke-virtual {v1, v0, p0}, Lorg/roboguice/shaded/goole/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 3461
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;
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
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1640
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1641
    check-cast p0, Ljava/util/SortedMap;

    .end local p0    # "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    .line 1643
    :goto_0
    return-object v0

    .restart local p0    # "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesMap;-><init>(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    goto :goto_0
.end method

.method public static transformEntries(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/NavigableMap;
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
            "Ljava/util/NavigableMap",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Ljava/util/NavigableMap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1761
    .local p0, "fromMap":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesNavigableMap;-><init>(Ljava/util/NavigableMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
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
    .line 1701
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Platform;->mapsTransformEntriesSortedMap(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method static transformEntriesIgnoreNavigable(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/SortedMap;
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
    .line 1767
    .local p0, "fromMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV1;>;"
    .local p1, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$TransformedEntriesSortedMap;-><init>(Ljava/util/SortedMap;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method static transformEntry(Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V2:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV1;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1845
    .local p0, "transformer":Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;, "Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV1;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$10;

    invoke-direct {v0, p1, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$10;-><init>(Ljava/util/Map$Entry;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Map;
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
            "Ljava/util/Map",
            "<TK;TV1;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TV1;TV2;>;)",
            "Ljava/util/Map",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "fromMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV1;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Maps;->asEntryTransformer(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->transformEntries(Ljava/util/Map;Lorg/roboguice/shaded/goole/common/collect/Maps$EntryTransformer;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Ljava/util/Map$Entry",
            "<*TV;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;->VALUE:Lorg/roboguice/shaded/goole/common/collect/Maps$EntryFunction;

    return-object v0
.end method

.method static valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->valueFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static valueIterator(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "entryIterator":Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;, "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Maps$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;)V

    return-object v0
.end method
