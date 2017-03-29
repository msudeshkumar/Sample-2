.class public abstract Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.super Ljava/lang/Object;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/CacheLoader$InvalidCacheLoadException;,
        Lorg/roboguice/shaded/goole/common/cache/CacheLoader$UnsupportedLoadingOperationException;,
        Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;,
        Lorg/roboguice/shaded/goole/common/cache/CacheLoader$FunctionToCacheLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$FunctionToCacheLoader;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$FunctionToCacheLoader;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static from(Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
            "<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "supplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$SupplierToCacheLoader;-><init>(Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public abstract load(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$UnsupportedLoadingOperationException;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader$UnsupportedLoadingOperationException;-><init>()V

    throw v0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/CacheLoader;, "Lorg/roboguice/shaded/goole/common/cache/CacheLoader<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
