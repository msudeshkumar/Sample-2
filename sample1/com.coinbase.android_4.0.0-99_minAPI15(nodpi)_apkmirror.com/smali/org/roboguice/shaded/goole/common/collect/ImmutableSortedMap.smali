.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim",
        "<TK;TV;>;",
        "Ljava/util/NavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 413
    return-void
.end method

.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "descendingMap":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 416
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    .line 417
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

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
    .line 603
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

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
    .line 459
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 425
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->descendingSet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    .line 655
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->createDescendingMap()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    .end local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->descendingMap:Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    .line 658
    .restart local v0    # "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

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
    .line 593
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

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
    .line 613
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 429
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

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
    .line 583
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->navigableKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 421
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 517
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 5
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 538
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 540
    goto :goto_0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMap(Ljava/lang/Object;Z)Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSortedMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public abstract values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation
.end method
