.class final Lorg/roboguice/shaded/goole/common/collect/Iterators$8;
.super Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/roboguice/shaded/goole/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/TransformedIterator",
        "<TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lorg/roboguice/shaded/goole/common/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)V
    .locals 0

    .prologue
    .line 791
    .local p1, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+TF;>;"
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$8;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .prologue
    .line 794
    .local p1, "from":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Iterators$8;->val$function:Lorg/roboguice/shaded/goole/common/base/Function;

    invoke-interface {v0, p1}, Lorg/roboguice/shaded/goole/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
