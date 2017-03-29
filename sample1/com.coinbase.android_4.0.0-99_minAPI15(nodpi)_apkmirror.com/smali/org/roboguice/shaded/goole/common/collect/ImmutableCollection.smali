.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$ArrayBasedBuilder;,
        Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient asList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    .local p1, "newElements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->asList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 172
    .local v0, "list":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    .end local v0    # "list":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<TE;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->asList:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 4
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .prologue
    .line 199
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    aput-object v0, p1, p2

    move p2, v2

    .line 201
    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return p2
.end method

.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableAsList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;[Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method abstract isPartialView()Z
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    .local p1, "oldElements":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    .local p1, "elementsToKeep":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 60
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v1

    .line 61
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 62
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 65
    .local v0, "result":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection<TE;>;"
    .local p1, "other":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    .line 73
    .local v0, "size":I
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 74
    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 78
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    .line 79
    return-object p1

    .line 75
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 76
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
