.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap",
        "<TK;TV;>.org/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3765
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3765
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3769
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$EntryIterator;->nextEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
