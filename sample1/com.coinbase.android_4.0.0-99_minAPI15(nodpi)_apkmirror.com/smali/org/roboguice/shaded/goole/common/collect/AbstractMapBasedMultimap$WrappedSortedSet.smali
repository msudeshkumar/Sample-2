.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.org/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap",
            "<TK;TV;>.org/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TV;>;"
    .local p4, "ancestor":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 634
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 648
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getSortedSetDelegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 659
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 660
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    .end local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .restart local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 654
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    .local p2, "toElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 668
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    .end local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .restart local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->refreshIfEmpty()V

    .line 676
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getSortedSetDelegate()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object v4

    if-nez v4, :cond_0

    .end local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .restart local p0    # "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedSortedSet;"
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;->getAncestor()Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    move-result-object p0

    goto :goto_0
.end method
