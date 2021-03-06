.class final Lcom/google/inject/internal/LinkedProviderBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "LinkedProviderBindingImpl.java"

# interfaces
.implements Lcom/google/inject/internal/DelayedInitialize;
.implements Lcom/google/inject/spi/HasDependencies;
.implements Lcom/google/inject/spi/ProviderKeyBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/internal/DelayedInitialize;",
        "Lcom/google/inject/spi/HasDependencies;",
        "Lcom/google/inject/spi/ProviderKeyBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

.field final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
    .locals 8
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "source"    # Ljava/lang/Object;
    .param p5, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "internalFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    .local p6, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)V
    .locals 0
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "source"    # Ljava/lang/Object;
    .param p5, "scoping"    # Lcom/google/inject/internal/Scoping;
    .param p7, "delayedInitializer"    # Lcom/google/inject/internal/DelayedInitialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;",
            "Lcom/google/inject/internal/DelayedInitialize;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "internalFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    .local p6, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 41
    iput-object p6, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    .line 42
    iput-object p7, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p3, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 54
    iput-object p4, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    .line 56
    return-void
.end method

.method static createWithInitializer(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)Lcom/google/inject/internal/LinkedProviderBindingImpl;
    .locals 8
    .param p0, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p2, "source"    # Ljava/lang/Object;
    .param p4, "scoping"    # Lcom/google/inject/internal/Scoping;
    .param p6, "delayedInitializer"    # Lcom/google/inject/internal/DelayedInitialize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;",
            "Lcom/google/inject/internal/DelayedInitialize;",
            ")",
            "Lcom/google/inject/internal/LinkedProviderBindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p3, "internalFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    .local p5, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    new-instance v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)V

    return-object v0
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
    .line 67
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    .local p1, "visitor":Lcom/google/inject/spi/BindingTargetVisitor;, "Lcom/google/inject/spi/BindingTargetVisitor<-TT;TV;>;"
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 93
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getProviderKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Scoping;->applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V

    .line 95
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    const/4 v1, 0x0

    .line 108
    instance-of v2, p1, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    .line 110
    .local v0, "o":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<*>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    iget-object v3, v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 114
    .end local v0    # "o":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<*>;"
    :cond_0
    return v1
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
    .line 81
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getProviderKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    .locals 1
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->delayedInitializer:Lcom/google/inject/internal/DelayedInitialize;

    invoke-interface {v0, p1, p2}, Lcom/google/inject/internal/DelayedInitialize;->initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V

    .line 78
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    const-class v0, Lcom/google/inject/spi/ProviderKeyBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method

.method public withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 4
    .param p1, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/inject/internal/LinkedProviderBindingImpl;, "Lcom/google/inject/internal/LinkedProviderBindingImpl<TT;>;"
    new-instance v0, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/LinkedProviderBindingImpl;->providerKey:Lcom/google/inject/Key;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v0
.end method
