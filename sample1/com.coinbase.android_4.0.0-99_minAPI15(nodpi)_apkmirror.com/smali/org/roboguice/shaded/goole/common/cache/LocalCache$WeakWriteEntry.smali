.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1452
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->writeTime:J

    .line 1464
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1477
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1448
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1482
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 1456
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1474
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1475
    return-void
.end method

.method public setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1488
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1461
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakWriteEntry;->writeTime:J

    .line 1462
    return-void
.end method
