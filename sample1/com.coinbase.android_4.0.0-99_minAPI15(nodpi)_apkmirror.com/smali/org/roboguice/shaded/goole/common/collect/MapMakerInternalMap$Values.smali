.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;
.super Ljava/util/AbstractCollection;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3806
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3830
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->clear()V

    .line 3831
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 3825
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3820
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3810
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.Values;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3815
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Values;->this$0:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
