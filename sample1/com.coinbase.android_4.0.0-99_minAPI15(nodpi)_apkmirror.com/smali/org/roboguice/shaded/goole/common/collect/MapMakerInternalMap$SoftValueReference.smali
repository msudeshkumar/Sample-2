.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1730
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "referent":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1731
    iput-object p3, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;->entry:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1732
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
    .line 1741
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    .local p1, "newValue":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;->clear()V

    .line 1742
    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 1
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
    .line 1747
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;

    invoke-direct {v0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

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
    .line 1736
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;->entry:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public isComputingReference()Z
    .locals 1

    .prologue
    .line 1752
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
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
    .line 1757
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$SoftValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
