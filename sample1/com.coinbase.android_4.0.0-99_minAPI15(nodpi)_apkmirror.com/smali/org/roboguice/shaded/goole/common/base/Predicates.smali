.class public final Lorg/roboguice/shaded/goole/common/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Predicates$1;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;,
        Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
    }
.end annotation


# static fields
.field private static final COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    const-string v0, ","

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Joiner;->on(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates;->COMMA_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    return-void
.end method

.method public static equalTo(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "target":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/base/Predicates;->isNull()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    goto :goto_0
.end method

.method public static in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "target":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-object v0
.end method

.method public static isNull()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->IS_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method
