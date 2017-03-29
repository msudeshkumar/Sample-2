.class public final Lorg/roboguice/shaded/goole/common/collect/HashMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;
.source "HashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field transient expectedValuesPerKey:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    .line 92
    return-void
.end method

.method public static create()Lorg/roboguice/shaded/goole/common/collect/HashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/HashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    iget v0, p0, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->expectedValuesPerKey:I

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/HashMultimap;, "Lorg/roboguice/shaded/goole/common/collect/HashMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
