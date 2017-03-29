.class public final Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

.field private final totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 207
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 208
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 209
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 210
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 211
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    .line 216
    return-void
.end method


# virtual methods
.method public recordEviction()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->increment()V

    .line 249
    return-void
.end method

.method public recordHits(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 224
    return-void
.end method

.method public recordLoadException(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 242
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->increment()V

    .line 243
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 244
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .prologue
    .line 236
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->increment()V

    .line 237
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 238
    return-void
.end method

.method public recordMisses(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/cache/LongAddable;->add(J)V

    .line 232
    return-void
.end method
