.class abstract Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/collect/Multimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    .line 208
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method abstract createAsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 216
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Multimaps;->equalsImpl(Lorg/roboguice/shaded/goole/common/collect/Multimap;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    .line 150
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;, "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
