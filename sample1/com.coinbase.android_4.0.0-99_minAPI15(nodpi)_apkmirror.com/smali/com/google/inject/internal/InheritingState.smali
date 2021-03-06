.class final Lcom/google/inject/internal/InheritingState;
.super Ljava/lang/Object;
.source "InheritingState.java"

# interfaces
.implements Lcom/google/inject/internal/State;


# instance fields
.field private final blacklistedKeys:Lcom/google/inject/internal/WeakKeySet;

.field private final converters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final explicitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final explicitBindingsMutable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final parent:Lcom/google/inject/internal/State;

.field private final provisionListenerBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/ProvisionListenerBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final scopes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/spi/ScopeBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final typeListenerBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/State;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/inject/internal/State;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->explicitBindings:Ljava/util/Map;

    .line 52
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    .line 53
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->converters:Ljava/util/List;

    .line 57
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->typeListenerBindings:Ljava/util/List;

    .line 58
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->provisionListenerBindings:Ljava/util/List;

    .line 63
    const-string v0, "parent"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/State;

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    .line 64
    sget-object v0, Lcom/google/inject/internal/State;->NONE:Lcom/google/inject/internal/State;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->lock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/google/inject/internal/WeakKeySet;

    iget-object v1, p0, Lcom/google/inject/internal/InheritingState;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/WeakKeySet;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/google/inject/internal/WeakKeySet;

    .line 66
    return-void

    .line 64
    :cond_0
    invoke-interface {p1}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addConverter(Lcom/google/inject/spi/TypeConverterBinding;)V
    .locals 1
    .param p1, "typeConverterBinding"    # Lcom/google/inject/spi/TypeConverterBinding;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->converters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public addProvisionListener(Lcom/google/inject/spi/ProvisionListenerBinding;)V
    .locals 1
    .param p1, "listenerBinding"    # Lcom/google/inject/spi/ProvisionListenerBinding;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->provisionListenerBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V
    .locals 1
    .param p1, "listenerBinding"    # Lcom/google/inject/spi/TypeListenerBinding;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->typeListenerBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V
    .locals 1
    .param p2, "state"    # Lcom/google/inject/internal/State;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/internal/State;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/inject/internal/State;->blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/google/inject/internal/WeakKeySet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/inject/internal/WeakKeySet;->add(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/spi/TypeConverterBinding;
    .locals 8
    .param p1, "stringValue"    # Ljava/lang/String;
    .param p3, "errors"    # Lcom/google/inject/internal/Errors;
    .param p4, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Lcom/google/inject/internal/Errors;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/spi/TypeConverterBinding;"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    const/4 v4, 0x0

    .line 106
    .local v4, "matchingConverter":Lcom/google/inject/spi/TypeConverterBinding;
    move-object v7, p0

    .local v7, "s":Lcom/google/inject/internal/State;
    :goto_0
    sget-object v0, Lcom/google/inject/internal/State;->NONE:Lcom/google/inject/internal/State;

    if-eq v7, v0, :cond_3

    .line 107
    invoke-interface {v7}, Lcom/google/inject/internal/State;->getConvertersThisLevel()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/spi/TypeConverterBinding;

    .line 108
    .local v5, "converter":Lcom/google/inject/spi/TypeConverterBinding;
    invoke-virtual {v5}, Lcom/google/inject/spi/TypeConverterBinding;->getTypeMatcher()Lcom/google/inject/matcher/Matcher;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    if-eqz v4, :cond_1

    move-object v0, p3

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Errors;->ambiguousTypeConversion(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Lcom/google/inject/spi/TypeConverterBinding;)Lcom/google/inject/internal/Errors;

    .line 112
    :cond_1
    move-object v4, v5

    goto :goto_1

    .line 106
    .end local v5    # "converter":Lcom/google/inject/spi/TypeConverterBinding;
    :cond_2
    invoke-interface {v7}, Lcom/google/inject/internal/State;->parent()Lcom/google/inject/internal/State;

    move-result-object v7

    goto :goto_0

    .line 116
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object v4
.end method

.method public getConvertersThisLevel()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->converters:Ljava/util/List;

    return-object v0
.end method

.method public getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/InheritingState;->explicitBindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Binding;

    .line 75
    .local v0, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/inject/internal/BindingImpl;

    .end local v0    # "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    :cond_0
    iget-object v1, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    invoke-interface {v1, p1}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getExplicitBindingsThisLevel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->explicitBindings:Ljava/util/Map;

    return-object v0
.end method

.method public getProvisionListenerBindings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/ProvisionListenerBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getProvisionListenerBindings()Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "parentBindings":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/ProvisionListenerBinding;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/ProvisionListenerBinding;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    iget-object v2, p0, Lcom/google/inject/internal/InheritingState;->provisionListenerBindings:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    return-object v1
.end method

.method public getScopeBinding(Ljava/lang/Class;)Lcom/google/inject/spi/ScopeBinding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/spi/ScopeBinding;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v1, p0, Lcom/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/ScopeBinding;

    .line 88
    .local v0, "scopeBinding":Lcom/google/inject/spi/ScopeBinding;
    if-eqz v0, :cond_0

    .end local v0    # "scopeBinding":Lcom/google/inject/spi/ScopeBinding;
    :goto_0
    return-object v0

    .restart local v0    # "scopeBinding":Lcom/google/inject/spi/ScopeBinding;
    :cond_0
    iget-object v1, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    invoke-interface {v1, p1}, Lcom/google/inject/internal/State;->getScopeBinding(Ljava/lang/Class;)Lcom/google/inject/spi/ScopeBinding;

    move-result-object v0

    goto :goto_0
.end method

.method public getScopes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 177
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lcom/google/inject/Scope;>;"
    iget-object v3, p0, Lcom/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lcom/google/inject/spi/ScopeBinding;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/spi/ScopeBinding;

    invoke-virtual {v3}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 180
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lcom/google/inject/spi/ScopeBinding;>;"
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method public getSourcesForBlacklistedKey(Lcom/google/inject/Key;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/google/inject/internal/WeakKeySet;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/WeakKeySet;->getSources(Lcom/google/inject/Key;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTypeListenerBindings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v2, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getTypeListenerBindings()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "parentBindings":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/TypeListenerBinding;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/TypeListenerBinding;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    iget-object v2, p0, Lcom/google/inject/internal/InheritingState;->typeListenerBindings:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    return-object v1
.end method

.method public isBlacklisted(Lcom/google/inject/Key;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->blacklistedKeys:Lcom/google/inject/internal/WeakKeySet;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/WeakKeySet;->contains(Lcom/google/inject/Key;)Z

    move-result v0

    return v0
.end method

.method public lock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public parent()Lcom/google/inject/internal/State;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->parent:Lcom/google/inject/internal/State;

    return-object v0
.end method

.method public putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    .local p2, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->explicitBindingsMutable:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public putScopeBinding(Ljava/lang/Class;Lcom/google/inject/spi/ScopeBinding;)V
    .locals 1
    .param p2, "scope"    # Lcom/google/inject/spi/ScopeBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/spi/ScopeBinding;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InheritingState;->scopes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
