.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakAccessWriteEntry"
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
.field volatile accessTime:J

.field nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
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

.field previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
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
    .locals 4
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
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 1494
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1499
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1511
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1524
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1539
    iput-wide v2, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1551
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1564
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1495
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .prologue
    .line 1503
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1516
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

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
    .line 1556
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1529
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

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
    .line 1569
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 1543
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1508
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->accessTime:J

    .line 1509
    return-void
.end method

.method public setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1522
    return-void
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
    .line 1561
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1562
    return-void
.end method

.method public setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1534
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1535
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
    .line 1574
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1575
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1548
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WeakAccessWriteEntry;->writeTime:J

    .line 1549
    return-void
.end method
