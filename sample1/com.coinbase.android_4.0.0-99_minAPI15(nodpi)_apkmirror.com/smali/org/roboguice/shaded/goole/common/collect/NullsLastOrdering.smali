.class final Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "NullsLastOrdering.java"

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
.field final ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    .local p1, "ordering":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<-TT;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    .line 32
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    if-nez p2, :cond_2

    .line 42
    const/4 v0, -0x1

    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    .line 65
    :cond_0
    instance-of v1, p1, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;

    .line 67
    .local v0, "that":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<*>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    iget-object v2, v0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 69
    .end local v0    # "that":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x36e88db8    # -620324.5f

    xor-int/2addr v0, v1

    return v0
.end method

.method public nullsFirst()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->nullsFirst()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public nullsLast()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    return-object p0
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
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->nullsFirst()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;, "Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;->ordering:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".nullsLast()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
