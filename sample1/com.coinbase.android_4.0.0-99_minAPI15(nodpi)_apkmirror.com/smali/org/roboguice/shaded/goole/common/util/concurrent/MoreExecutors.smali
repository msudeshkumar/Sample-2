.class public final Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;
.super Ljava/lang/Object;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$SameThreadExecutorService;
    }
.end annotation


# direct methods
.method public static sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$SameThreadExecutorService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$SameThreadExecutorService;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;)V

    return-object v0
.end method
