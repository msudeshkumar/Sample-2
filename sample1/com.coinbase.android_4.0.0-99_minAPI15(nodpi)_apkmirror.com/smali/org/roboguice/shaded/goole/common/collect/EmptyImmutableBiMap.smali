.class final Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.source "EmptyImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method


# virtual methods
.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableBiMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
