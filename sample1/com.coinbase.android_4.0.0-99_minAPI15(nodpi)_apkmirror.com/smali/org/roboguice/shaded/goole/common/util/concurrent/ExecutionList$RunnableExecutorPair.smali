.class final Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableExecutorPair"
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field next:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "next"    # Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    .line 173
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    .line 174
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lorg/roboguice/shaded/goole/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 175
    return-void
.end method
