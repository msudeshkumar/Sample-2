.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap",
        "<TK;TV;>.org/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3702
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3706
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.KeyIterator;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$KeyIterator;->nextEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
