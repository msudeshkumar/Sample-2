.class final enum Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$1;
.super Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/base/Predicates$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 278
    const/4 v0, 0x1

    return v0
.end method
