.class public final Lorg/roboguice/shaded/goole/common/cache/CacheStats;
.super Ljava/lang/Object;
.source "CacheStats.java"


# instance fields
.field private final evictionCount:J

.field private final hitCount:J

.field private final loadExceptionCount:J

.field private final loadSuccessCount:J

.field private final missCount:J

.field private final totalLoadTime:J


# direct methods
.method public constructor <init>(JJJJJJ)V
    .locals 3
    .param p1, "hitCount"    # J
    .param p3, "missCount"    # J
    .param p5, "loadSuccessCount"    # J
    .param p7, "loadExceptionCount"    # J
    .param p9, "totalLoadTime"    # J
    .param p11, "evictionCount"    # J

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v0, p7, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v0, p11, v0

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 86
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    .line 87
    iput-wide p3, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    .line 88
    iput-wide p5, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    .line 89
    iput-wide p7, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    .line 90
    iput-wide p9, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    .line 91
    iput-wide p11, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    .line 92
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 83
    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    .line 84
    :cond_5
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 253
    instance-of v2, p1, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 254
    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;

    .line 255
    .local v0, "other":Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    iget-wide v4, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    iget-wide v4, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    iget-wide v4, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    iget-wide v4, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    iget-wide v4, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    iget-wide v4, v0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 262
    .end local v0    # "other":Lorg/roboguice/shaded/goole/common/cache/CacheStats;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "hitCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->hitCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "missCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->missCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadSuccessCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadSuccessCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "loadExceptionCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->loadExceptionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "totalLoadTime"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->totalLoadTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "evictionCount"

    iget-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/CacheStats;->evictionCount:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
