.class abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
.source "ImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection",
            "<TE;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableAsList;->delegateCollection()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method
