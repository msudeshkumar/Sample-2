.class final Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "ReverseOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "forwardOrder":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    .line 34
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    .line 35
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p2, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 86
    const/4 v1, 0x1

    .line 92
    :goto_0
    return v1

    .line 88
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 89
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;

    .line 90
    .local v0, "that":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<*>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 92
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;, "Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;->forwardOrder:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
