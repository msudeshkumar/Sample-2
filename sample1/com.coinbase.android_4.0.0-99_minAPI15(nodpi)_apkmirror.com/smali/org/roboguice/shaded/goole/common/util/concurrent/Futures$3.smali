.class final Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 935
    check-cast p1, Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/util/concurrent/Futures$3;->apply(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;)Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 937
    .local p1, "input":Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture;, "Lorg/roboguice/shaded/goole/common/util/concurrent/ListenableFuture<Ljava/lang/Object;>;"
    return-object p1
.end method
