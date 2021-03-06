.class public final Lcom/google/inject/internal/ExposedBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "ExposedBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ExposedBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/ExposedBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final privateElements:Lcom/google/inject/spi/PrivateElements;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/spi/PrivateElements;)V
    .locals 6
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p2, "source"    # Ljava/lang/Object;
    .param p5, "privateElements"    # Lcom/google/inject/spi/PrivateElements;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/InternalFactory",
            "<TT;>;",
            "Lcom/google/inject/spi/PrivateElements;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/google/inject/internal/ExposedBindingImpl;, "Lcom/google/inject/internal/ExposedBindingImpl<TT;>;"
    .local p3, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "factory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<TT;>;"
    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 38
    iput-object p5, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    .line 39
    return-void
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor",
            "<-TT;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/inject/internal/ExposedBindingImpl;, "Lcom/google/inject/internal/ExposedBindingImpl<TT;>;"
    .local p1, "visitor":Lcom/google/inject/spi/BindingTargetVisitor;, "Lcom/google/inject/spi/BindingTargetVisitor<-TT;TV;>;"
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 2
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 62
    .local p0, "this":Lcom/google/inject/internal/ExposedBindingImpl;, "Lcom/google/inject/internal/ExposedBindingImpl<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This element represents a synthetic binding."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/google/inject/internal/ExposedBindingImpl;, "Lcom/google/inject/internal/ExposedBindingImpl<TT;>;"
    const-class v0, Lcom/google/inject/Injector;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateElements()Lcom/google/inject/spi/PrivateElements;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/google/inject/internal/ExposedBindingImpl;, "Lcom/google/inject/internal/ExposedBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    .local p0, "this":Lcom/google/inject/internal/ExposedBindingImpl;, "Lcom/google/inject/internal/ExposedBindingImpl<TT;>;"
    const-class v0, Lcom/google/inject/spi/ExposedBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/ExposedBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/ExposedBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "privateElements"

    iget-object v2, p0, Lcom/google/inject/internal/ExposedBindingImpl;->privateElements:Lcom/google/inject/spi/PrivateElements;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
