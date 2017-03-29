.class public interface abstract Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
.super Ljava/lang/Object;
.source "LoadingCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Function;
.implements Lorg/roboguice/shaded/goole/common/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Function",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/cache/Cache",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract asMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method
