.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/roboguice/shaded/goole/common/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalManualCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lorg/roboguice/shaded/goole/common/cache/Cache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4718
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "builder":Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;, "Lorg/roboguice/shaded/goole/common/cache/CacheBuilder<-TK;-TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    .line 4719
    return-void
.end method

.method private constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4721
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "localCache":Lorg/roboguice/shaded/goole/common/cache/LocalCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4722
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    .line 4723
    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$1;

    .prologue
    .line 4714
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;-><init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4782
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 4797
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->cleanUp()V

    .line 4798
    return-void
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 4730
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 4751
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$LocalManualCache;->localCache:Lorg/roboguice/shaded/goole/common/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4752
    return-void
.end method
