.class public final Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;
.source "LinkedHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset",
        "<TE;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;-><init>(Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public static create()Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset;, "Lorg/roboguice/shaded/goole/common/collect/LinkedHashMultiset<TE;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMapBasedMultiset;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
