.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractSequentialIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractSequentialIterator",
        "<",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 3844
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue.2;"
    .local p2, "x0":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;

    invoke-direct {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3844
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue.2;"
    check-cast p1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;->computeNext(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3847
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue.2;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;->getNextInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3848
    .local v0, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue$2;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AccessQueue;->head:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    :cond_0
    return-object v0
.end method
