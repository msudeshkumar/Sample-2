.class final Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;
.super Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongEntry",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1096
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongEntry;-><init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1101
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->time:J

    .line 1113
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1126
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1141
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1154
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap;->nullEntry()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1097
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 1105
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public getNextEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousEvictable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousExpirable()Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1110
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->time:J

    .line 1111
    return-void
.end method

.method public setNextEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1152
    return-void
.end method

.method public setNextExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1123
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->nextExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1124
    return-void
.end method

.method public setPreviousEvictable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousEvictable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1165
    return-void
.end method

.method public setPreviousExpirable(Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1136
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$StrongExpirableEvictableEntry;->previousExpirable:Lorg/roboguice/shaded/goole/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1137
    return-void
.end method
