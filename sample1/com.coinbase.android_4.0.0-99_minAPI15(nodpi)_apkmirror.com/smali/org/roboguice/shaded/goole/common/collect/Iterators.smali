.class public final Lorg/roboguice/shaded/goole/common/collect/Iterators;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final EMPTY_LIST_ITERATOR:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Iterators$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Iterators;->EMPTY_LIST_ITERATOR:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    .line 122
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Iterators$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators$2;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Iterators;->EMPTY_MODIFIABLE_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "addTo":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "wasModified":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 359
    :cond_0
    return v0
.end method

.method public static any(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->indexOf(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static clear(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1003
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1005
    :cond_0
    return-void
.end method

.method public static concat(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, "inputs":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Iterator<+TT;>;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Iterators$5;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static contains(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->any(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 264
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    :cond_1
    :goto_0
    return v2

    .line 268
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, "o1":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "o2":Ljava/lang/Object;
    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 274
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static emptyIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->emptyListIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method static emptyListIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Iterators;->EMPTY_LIST_ITERATOR:Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method public static varargs forArray([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1021
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->forArray([Ljava/lang/Object;III)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method static forArray([Ljava/lang/Object;III)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1033
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    if-ltz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(Z)V

    .line 1034
    add-int v0, p1, p2

    .line 1037
    .local v0, "end":I
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 1038
    invoke-static {p3, p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkPositionIndex(II)I

    .line 1039
    if-nez p2, :cond_1

    .line 1040
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->emptyListIterator()Lorg/roboguice/shaded/goole/common/collect/UnmodifiableListIterator;

    move-result-object v1

    .line 1048
    :goto_1
    return-object v1

    .line 1033
    .end local v0    # "end":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1048
    .restart local v0    # "end":I
    :cond_1
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Iterators$11;

    invoke-direct {v1, p2, p3, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators$11;-><init>(II[Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method public static getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 860
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "defaultValue":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method public static getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "first":Ljava/lang/Object;, "TT;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    return-object v0

    .line 302
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected one element but was: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    const-string v3, ", ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_2
    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static indexOf(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)I"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    const-string v2, "predicate"

    invoke-static {p1, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 772
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 773
    .local v0, "current":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    .end local v0    # "current":Ljava/lang/Object;, "TT;"
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 771
    .restart local v0    # "current":Ljava/lang/Object;, "TT;"
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    .end local v0    # "current":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Predicates;->in(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static removeIf(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Predicate",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "removeFrom":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "predicate":Lorg/roboguice/shaded/goole/common/base/Predicate;, "Lorg/roboguice/shaded/goole/common/base/Predicate<-TT;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "modified":Z
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/roboguice/shaded/goole/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1063
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Iterators$12;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators$12;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Collections2;->STANDARD_JOINER:Lorg/roboguice/shaded/goole/common/base/Joiner;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/roboguice/shaded/goole/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TF;+TT;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Iterators$8;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Iterators$8;-><init>(Ljava/util/Iterator;Lorg/roboguice/shaded/goole/common/base/Function;)V

    return-object v0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;

    .line 156
    .end local p0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Iterators$3;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Iterators$3;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_0
.end method
