.class Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.org/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection.org/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;)V
    .locals 0

    .prologue
    .line 852
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-void
.end method

.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 854
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    .line 855
    invoke-virtual {p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->getListDelegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedCollection;Ljava/util/Iterator;)V

    .line 856
    return-void
.end method

.method private getDelegateListIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateIterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->isEmpty()Z

    move-result v0

    .line 890
    .local v0, "wasEmpty":Z
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 891
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    iget-object v1, v1, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;

    # operator++ for: Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;->access$208(Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap;)I

    .line 892
    if-eqz v0, :cond_0

    .line 893
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->this$1:Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList;->addToMap()V

    .line 895
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 864
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 874
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 869
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 879
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 884
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedList.WrappedListIterator;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultimap$WrappedList$WrappedListIterator;->getDelegateListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 885
    return-void
.end method
