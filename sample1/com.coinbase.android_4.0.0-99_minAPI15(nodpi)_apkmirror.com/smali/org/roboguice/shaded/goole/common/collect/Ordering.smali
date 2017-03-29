.class public abstract Lorg/roboguice/shaded/goole/common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/Ordering$IncomparableValueException;,
        Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;,
        Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrderingHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LEFT_IS_GREATER:I = 0x1

.field static final RIGHT_IS_GREATER:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 318
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allEqual()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AllEqualOrdering;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/AllEqualOrdering;

    return-object v0
.end method

.method public static arbitrary()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-object v0
.end method

.method public static compound(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Comparator",
            "<-TT;>;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "comparators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/CompoundOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/CompoundOrdering;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs explicit(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "leastValue":Ljava/lang/Object;, "TT;"
    .local p1, "remainingValuesInOrder":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->explicit(Ljava/util/List;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public static explicit(Ljava/util/List;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ExplicitOrdering;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static from(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/collect/Ordering;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/Ordering;

    .end local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static from(Lorg/roboguice/shaded/goole/common/collect/Ordering;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    .local p0, "ordering":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-object v0
.end method

.method public static natural()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;

    return-object v0
.end method

.method private partition([Ljava/lang/Object;III)I
    .locals 4
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "pivotIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>([TE;III)I"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TE;"
    aget-object v1, p1, p4

    .line 741
    .local v1, "pivotValue":Ljava/lang/Object;, "TE;"
    aget-object v3, p1, p3

    aput-object v3, p1, p4

    .line 742
    aput-object v1, p1, p3

    .line 744
    move v2, p2

    .line 745
    .local v2, "storeIndex":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 746
    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 747
    invoke-static {p1, v2, v0}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->swap([Ljava/lang/Object;II)V

    .line 748
    add-int/lit8 v2, v2, 0x1

    .line 745
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_1
    invoke-static {p1, p3, v2}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->swap([Ljava/lang/Object;II)V

    .line 752
    return v2
.end method

.method public static usingToString()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;

    return-object v0
.end method


# virtual methods
.method public binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+TT;>;TT;)I"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "sortedList":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
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
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public compound(Ljava/util/Comparator;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/Comparator",
            "<-TU;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/CompoundOrdering;

    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {v1, p0, v0}, Lorg/roboguice/shaded/goole/common/collect/CompoundOrdering;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public greatestOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 772
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->leastOf(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greatestOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public immutableSortedCopy(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 846
    .local v2, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 847
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 849
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-static {v2, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 850
    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method public isOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 861
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 863
    .local v2, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 864
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 865
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 866
    const/4 v3, 0x0

    .line 871
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :goto_1
    return v3

    .line 868
    .restart local v1    # "next":Ljava/lang/Object;, "TT;"
    .restart local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v2, v1

    .line 869
    goto :goto_0

    .line 871
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isStrictlyOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 881
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 882
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 884
    .local v2, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 885
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 886
    .local v1, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 887
    const/4 v3, 0x0

    .line 892
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :goto_1
    return v3

    .line 889
    .restart local v1    # "next":Ljava/lang/Object;, "TT;"
    .restart local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v2, v1

    .line 890
    goto :goto_0

    .line 892
    .end local v1    # "next":Ljava/lang/Object;, "TT;"
    .end local v2    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public leastOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 8
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 613
    check-cast v1, Ljava/util/Collection;

    .line 614
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2

    int-to-long v6, p2

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 620
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 621
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 622
    array-length v2, v0

    if-le v2, p2, :cond_0

    .line 623
    invoke-static {v0, p2}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 625
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 628
    .end local v0    # "array":[Ljava/lang/Object;, "[TE;"
    .end local v1    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public leastOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 15
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-static/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v14, "k"

    move/from16 v0, p2

    invoke-static {v0, v14}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 649
    if-eqz p2, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 650
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v14

    .line 732
    :goto_0
    return-object v14

    .line 651
    :cond_1
    const v14, 0x3fffffff    # 1.9999999f

    move/from16 v0, p2

    if-lt v0, v14, :cond_3

    .line 653
    invoke-static/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 654
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v8, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 655
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p2

    if-le v14, v0, :cond_2

    .line 656
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, p2

    invoke-virtual {v8, v0, v14}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 658
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->trimToSize()V

    .line 659
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    goto :goto_0

    .line 676
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_3
    mul-int/lit8 v2, p2, 0x2

    .line 678
    .local v2, "bufferCap":I
    new-array v1, v2, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 679
    .local v1, "buffer":[Ljava/lang/Object;, "[TE;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 680
    .local v13, "threshold":Ljava/lang/Object;, "TE;"
    const/4 v14, 0x0

    aput-object v13, v1, v14

    .line 681
    const/4 v3, 0x1

    .local v3, "bufferSize":I
    move v4, v3

    .line 685
    .end local v3    # "bufferSize":I
    .local v4, "bufferSize":I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 686
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 687
    .local v5, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    aput-object v5, v1, v4

    .line 688
    invoke-virtual {p0, v13, v5}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move v4, v3

    .line 689
    .end local v3    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    goto :goto_1

    .line 691
    .end local v4    # "bufferSize":I
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    .restart local v3    # "bufferSize":I
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 692
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 693
    .restart local v5    # "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v5, v13}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_4

    .line 697
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    aput-object v5, v1, v3

    .line 698
    if-ne v4, v2, :cond_8

    .line 701
    const/4 v7, 0x0

    .line 702
    .local v7, "left":I
    add-int/lit8 v12, v2, -0x1

    .line 704
    .local v12, "right":I
    const/4 v9, 0x0

    .line 708
    .local v9, "minThresholdPosition":I
    :goto_3
    if-ge v7, v12, :cond_6

    .line 709
    add-int v14, v7, v12

    add-int/lit8 v14, v14, 0x1

    ushr-int/lit8 v10, v14, 0x1

    .line 710
    .local v10, "pivotIndex":I
    invoke-direct {p0, v1, v7, v12, v10}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->partition([Ljava/lang/Object;III)I

    move-result v11

    .line 711
    .local v11, "pivotNewIndex":I
    move/from16 v0, p2

    if-le v11, v0, :cond_5

    .line 712
    add-int/lit8 v12, v11, -0x1

    goto :goto_3

    .line 713
    :cond_5
    move/from16 v0, p2

    if-ge v11, v0, :cond_6

    .line 714
    add-int/lit8 v14, v7, 0x1

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 715
    move v9, v11

    goto :goto_3

    .line 720
    .end local v10    # "pivotIndex":I
    .end local v11    # "pivotNewIndex":I
    :cond_6
    move/from16 v3, p2

    .line 722
    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    aget-object v13, v1, v9

    .line 723
    add-int/lit8 v6, v9, 0x1

    .local v6, "i":I
    :goto_4
    if-ge v6, v3, :cond_4

    .line 724
    aget-object v14, v1, v6

    invoke-virtual {p0, v13, v14}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 723
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 729
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    .end local v6    # "i":I
    .end local v7    # "left":I
    .end local v9    # "minThresholdPosition":I
    .end local v12    # "right":I
    :cond_7
    const/4 v14, 0x0

    invoke-static {v1, v14, v3, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 731
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 732
    invoke-static {v1, v3}, Lorg/roboguice/shaded/goole/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    goto/16 :goto_0

    .end local v3    # "bufferSize":I
    .restart local v4    # "bufferSize":I
    :cond_8
    move v3, v4

    .end local v4    # "bufferSize":I
    .restart local v3    # "bufferSize":I
    goto :goto_2
.end method

.method public lexicographical()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<",
            "Ljava/lang/Iterable",
            "<TS;>;>;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/LexicographicalOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/LexicographicalOrdering;-><init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V

    return-object v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .end local p1    # "a":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 590
    .local v3, "maxSoFar":Ljava/lang/Object;, "TE;"
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 591
    .local v4, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3, v4}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v4    # "r":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v3
.end method

.method public max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 538
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_0
    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .end local p1    # "a":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/Object;, "TE;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 514
    .local v3, "minSoFar":Ljava/lang/Object;, "TE;"
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 515
    .local v4, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v3, v4}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v4    # "r":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v3
.end method

.method public min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 462
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_0
    return-object v0
.end method

.method public nullsFirst()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/NullsFirstOrdering;-><init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V

    return-object v0
.end method

.method public nullsLast()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/NullsLastOrdering;-><init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V

    return-object v0
.end method

.method onKeys()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<",
            "Ljava/util/Map$Entry",
            "<TT2;*>;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->keyFunction()Lorg/roboguice/shaded/goole/common/base/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;->onResultOf(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public onResultOf(Lorg/roboguice/shaded/goole/common/base/Function;)Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<TF;+TT;>;)",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<TF;+TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Lorg/roboguice/shaded/goole/common/collect/ByFunctionOrdering;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/collect/Ordering;)V

    return-object v0
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/ReverseOrdering;-><init>(Lorg/roboguice/shaded/goole/common/collect/Ordering;)V

    return-object v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/Ordering;, "Lorg/roboguice/shaded/goole/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 816
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 817
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
