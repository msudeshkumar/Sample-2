.class Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChainingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;"
        }
    .end annotation
.end field

.field private inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<+TI;>;"
        }
    .end annotation
.end field

.field private final outputCreated:Ljava/util/concurrent/CountDownLatch;

.field private volatile outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;, "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    .local p2, "inputFuture":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<+TI;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;-><init>()V

    .line 811
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    .line 816
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 817
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 818
    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;
    .param p2, "x1"    # Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .param p3, "x2"    # Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;

    .prologue
    .line 805
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$302(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p0, "x0"    # Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;
    .param p1, "x1"    # Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .prologue
    .line 805
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private cancel(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mayInterruptIfRunning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_0

    .line 839
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 841
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 826
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 830
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 831
    const/4 v0, 0x1

    .line 833
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .local p0, "this":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    const/4 v6, 0x0

    .line 848
    :try_start_0
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    invoke-static {v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 861
    .local v2, "sourceResult":Ljava/lang/Object;, "TI;"
    :try_start_1
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    invoke-interface {v4, v2}, Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 863
    .local v1, "outputFuture":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<+TO;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 864
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->wasInterrupted()Z

    move-result v4

    invoke-interface {v1, v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 865
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 902
    .end local v1    # "outputFuture":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<+TO;>;"
    .end local v2    # "sourceResult":Ljava/lang/Object;, "TI;"
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {p0, v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 855
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 857
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 897
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 868
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v1    # "outputFuture":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<+TO;>;"
    .restart local v2    # "sourceResult":Ljava/lang/Object;, "TI;"
    :cond_0
    :try_start_4
    new-instance v4, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v4, p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 897
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 888
    .end local v1    # "outputFuture":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<+TO;>;"
    .end local v2    # "sourceResult":Ljava/lang/Object;, "TI;"
    :catch_2
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/reflect/UndeclaredThrowableException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 897
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 891
    .end local v0    # "e":Ljava/lang/reflect/UndeclaredThrowableException;
    :catch_3
    move-exception v3

    .line 894
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {p0, v3}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 897
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 897
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 898
    iput-object v6, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .line 900
    iget-object v5, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;->outputCreated:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v4
.end method
