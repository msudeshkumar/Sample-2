.class public abstract Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
.source "ImmutableBiMap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
        "<TK;TV;>;",
        "Lorg/roboguice/shaded/goole/common/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static of()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "k1":Ljava/lang/Object;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SingletonImmutableBiMap;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public values()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
