.class public final Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulFuture;,
        Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFuture;
    }
.end annotation


# static fields
.field private static final DEREFERENCER:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction",
            "<",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final WITH_STRING_PARAM_FIRST:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 934
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$3;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$3;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->DEREFERENCER:Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;

    .line 1432
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$5;

    invoke-direct {v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$5;-><init>()V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->onResultOf(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->WITH_STRING_PARAM_FIRST:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-void
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TI;+TO;>;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "input":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TI;+TO;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lorg/roboguice/shaded/goole/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/base/Function;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "input":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TI;+TO;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;

    invoke-direct {v0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;)V

    .line 717
    .local v0, "wrapperFunction":Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;, "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<TI;TO;>;"
    invoke-static {p0, v0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;->transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public static transform(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TI;>;",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<TO;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "input":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;, "Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$1;)V

    .line 608
    .local v0, "output":Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$ChainingListenableFuture<TI;TO;>;"
    invoke-interface {p0, v0, p2}, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 609
    return-object v0
.end method
