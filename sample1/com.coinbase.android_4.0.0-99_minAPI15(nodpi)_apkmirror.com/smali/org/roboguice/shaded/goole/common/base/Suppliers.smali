.class public final Lorg/roboguice/shaded/goole/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierOfInstance;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;
    }
.end annotation


# direct methods
.method public static memoize(Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    .end local p0    # "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-direct {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;-><init>(Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Supplier;
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
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
