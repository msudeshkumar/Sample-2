.class final Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;
.super Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NullComputingConcurrentMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 1
    .param p1, "mapMaker"    # Lorg/roboguice/shaded/goole/common/collect/MapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 838
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap<TK;TV;>;"
    .local p2, "computingFunction":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullConcurrentMap;-><init>(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)V

    .line 839
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Function;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    .line 840
    return-void
.end method

.method private compute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 853
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :try_start_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v2, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/roboguice/shaded/goole/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Lorg/roboguice/shaded/goole/common/collect/ComputationException;
    throw v0

    .line 858
    .end local v0    # "e":Lorg/roboguice/shaded/goole/common/collect/ComputationException;
    :catch_1
    move-exception v1

    .line 859
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/ComputationException;

    invoke-direct {v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;, "Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap<TK;TV;>;"
    move-object v0, p1

    .line 846
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;->compute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 847
    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;->computingFunction:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker$NullComputingConcurrentMap;->notifyRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 849
    return-object v1
.end method
