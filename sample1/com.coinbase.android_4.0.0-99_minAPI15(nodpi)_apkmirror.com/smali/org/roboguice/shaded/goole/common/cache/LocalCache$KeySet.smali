.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache",
        "<TK;TV;>.org/roboguice/shaded/goole/common/cache/",
        "LocalCache$AbstractCacheSet",
        "<TK;>;"
    }
.end annotation


# instance fields
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
    .line 4459
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.KeySet;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    .line 4460
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractCacheSet;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4461
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4470
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4465
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.KeySet;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeyIterator;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeyIterator;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 4475
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$KeySet;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
