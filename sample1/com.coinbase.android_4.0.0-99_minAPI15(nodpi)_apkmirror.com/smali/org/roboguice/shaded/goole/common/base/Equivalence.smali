.class public abstract Lorg/roboguice/shaded/goole/common/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;,
        Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Equals;

    return-object v0
.end method

.method public static identity()Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Equivalence$Identity;

    return-object v0
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TT;"
    .local p2, "b":Ljava/lang/Object;, "TT;"
    if-ne p1, p2, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
