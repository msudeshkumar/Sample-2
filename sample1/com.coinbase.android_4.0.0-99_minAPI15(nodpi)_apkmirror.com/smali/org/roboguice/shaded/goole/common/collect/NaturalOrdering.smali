.class final Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Ordering",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p1, "left"    # Ljava/lang/Comparable;
    .param p2, "right"    # Ljava/lang/Comparable;

    .prologue
    .line 33
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/NaturalOrdering;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public reverse()Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/ReverseNaturalOrdering;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/ReverseNaturalOrdering;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
