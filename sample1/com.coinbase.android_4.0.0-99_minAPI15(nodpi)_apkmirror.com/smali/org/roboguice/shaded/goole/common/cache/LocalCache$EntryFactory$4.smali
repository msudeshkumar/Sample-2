.class final enum Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$4;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "original":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    .local p3, "newNext":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory;->copyEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 494
    .local v0, "newEntry":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$4;->copyAccessEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 495
    invoke-virtual {p0, p2, v0}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$EntryFactory$4;->copyWriteEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 496
    return-object v0
.end method

.method newEntry(Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment",
            "<TK;TV;>;TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "segment":Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessWriteEntry;

    invoke-direct {v0, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessWriteEntry;-><init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    return-object v0
.end method
