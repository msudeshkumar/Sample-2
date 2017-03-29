.class abstract Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;
.super Ljava/lang/Object;
.source "GenericMapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 64
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;, "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<TK0;TV0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getRemovalListener()Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;, "Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker<TK0;TV0;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker;->removalListener:Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/GenericMapMaker$NullListener;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker$RemovalListener;

    return-object v0
.end method

.method abstract makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
