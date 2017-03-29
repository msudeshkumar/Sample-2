.class final Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors$1;->val$future:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 686
    return-void
.end method
