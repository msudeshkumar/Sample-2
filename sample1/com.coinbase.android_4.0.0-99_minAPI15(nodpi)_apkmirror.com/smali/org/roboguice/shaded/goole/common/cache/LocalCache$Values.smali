.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
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
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4482
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.Values;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4483
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 4484
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4495
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4496
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4505
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4491
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

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
    .line 4500
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.Values;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$ValueIterator;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
