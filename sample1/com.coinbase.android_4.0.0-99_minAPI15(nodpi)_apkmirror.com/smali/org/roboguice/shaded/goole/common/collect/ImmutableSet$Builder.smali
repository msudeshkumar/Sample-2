.class public Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 463
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;-><init>(I)V

    .line 464
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 467
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 468
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 456
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 456
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;

    .line 481
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 456
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    .locals 1
    .param p1, "x0"    # Ljava/util/Iterator;

    .prologue
    .line 456
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 509
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;

    .line 523
    return-object p0
.end method

.method public build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder<TE;>;"
    iget v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->size:I

    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    # invokes: Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    invoke-static {v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->access$000(I[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    .line 534
    .local v0, "result":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->size()I

    move-result v1

    iput v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->size:I

    .line 535
    return-object v0
.end method
