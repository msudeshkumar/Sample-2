.class Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArbitraryOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private uids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    .line 262
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;-><init>()V

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Platform;->tryWeakKeys(Lorg/roboguice/shaded/goole/common/collect/MapMaker;)Lorg/roboguice/shaded/goole/common/collect/MapMaker;

    move-result-object v0

    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;

    invoke-direct {v1, p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;)V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/MapMaker;->makeComputingMap(Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 274
    if-ne p1, p2, :cond_1

    .line 275
    const/4 v3, 0x0

    .line 292
    :cond_0
    :goto_0
    return v3

    .line 276
    :cond_1
    if-eqz p1, :cond_0

    .line 278
    if-nez p2, :cond_2

    move v3, v4

    .line 279
    goto :goto_0

    .line 281
    :cond_2
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 282
    .local v0, "leftCode":I
    invoke-virtual {p0, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 283
    .local v2, "rightCode":I
    if-eq v0, v2, :cond_3

    .line 284
    if-lt v0, v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 288
    :cond_3
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    .line 289
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 290
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_4
    move v3, v1

    .line 292
    goto :goto_0
.end method

.method identityHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 308
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
