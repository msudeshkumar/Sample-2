.class final Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
.source "ImmutableMapKeySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private final map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    .local p1, "map":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    .line 39
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    .line 59
    .local v0, "entryList":Lorg/roboguice/shaded/goole/common/collect/ImmutableList;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    return-object v1
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->asList()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapKeySet;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
