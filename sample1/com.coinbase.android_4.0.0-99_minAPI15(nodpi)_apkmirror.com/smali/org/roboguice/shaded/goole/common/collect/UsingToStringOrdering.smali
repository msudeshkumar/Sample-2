.class final Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;
.super Lorg/roboguice/shaded/goole/common/collect/Ordering;
.source "UsingToStringOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/UsingToStringOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Ordering.usingToString()"

    return-object v0
.end method
