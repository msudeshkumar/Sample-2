.class final enum Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength$1;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equals()Lorg/roboguice/shaded/goole/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method referenceValue(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "segment":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$Segment<TK;TV;>;"
    .local p2, "entry":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongValueReference;

    invoke-direct {v0, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongValueReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
