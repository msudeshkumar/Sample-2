.class Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry",
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
.end field

.field previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;)V
    .locals 0

    .prologue
    .line 3592
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->this$0:Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3602
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3614
    iput-object p0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

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
    .line 3606
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

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
    .line 3618
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 3596
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    const-wide v0, 0x7fffffffffffffffL

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
    .line 3611
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3612
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
    .line 3623
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 3624
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 3600
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue$1;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$WriteQueue.1;"
    return-void
.end method
