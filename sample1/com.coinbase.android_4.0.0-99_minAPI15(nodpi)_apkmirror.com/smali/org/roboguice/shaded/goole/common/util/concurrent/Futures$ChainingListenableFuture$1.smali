.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

.field final synthetic val$outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 868
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture.1;"
    const/4 v3, 0x0

    .line 872
    :try_start_0
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->val$outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    # setter for: Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    invoke-static {v1, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->access$302(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 886
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    :try_start_1
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 884
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    # setter for: Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    invoke-static {v1, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->access$302(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 879
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 881
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 884
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    # setter for: Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    invoke-static {v1, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->access$302(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;->this$0:Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    # setter for: Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->access$302(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    throw v1
.end method
