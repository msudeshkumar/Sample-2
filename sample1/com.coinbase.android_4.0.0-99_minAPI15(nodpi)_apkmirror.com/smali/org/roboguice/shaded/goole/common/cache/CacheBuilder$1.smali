.class final Lorg/roboguice/shaded/goole/common/cache/CacheBuilder$1;
.super Ljava/lang/Object;
.source "CacheBuilder.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEviction()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public recordHits(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 162
    return-void
.end method

.method public recordLoadException(J)V
    .locals 0
    .param p1, "loadTime"    # J

    .prologue
    .line 171
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 0
    .param p1, "loadTime"    # J

    .prologue
    .line 168
    return-void
.end method

.method public recordMisses(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 165
    return-void
.end method
