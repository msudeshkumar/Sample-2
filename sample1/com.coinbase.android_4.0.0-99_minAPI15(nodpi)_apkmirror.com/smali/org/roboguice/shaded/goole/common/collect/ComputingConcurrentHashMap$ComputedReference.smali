.class final Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;
.super Ljava/lang/Object;
.source "ComputingConcurrentHashMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComputedReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;->value:Ljava/lang/Object;

    .line 253
    return-void
.end method


# virtual methods
.method public clear(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    .local p1, "newValue":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 273
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;, "Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ComputingConcurrentHashMap$ComputedReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
