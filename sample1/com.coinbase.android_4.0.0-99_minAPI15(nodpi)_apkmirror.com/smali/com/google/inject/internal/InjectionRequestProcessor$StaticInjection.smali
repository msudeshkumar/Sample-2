.class Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
.super Ljava/lang/Object;
.source "InjectionRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InjectionRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticInjection"
.end annotation


# instance fields
.field final injector:Lcom/google/inject/internal/InjectorImpl;

.field memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field final request:Lcom/google/inject/spi/StaticInjectionRequest;

.field final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/inject/internal/InjectionRequestProcessor;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectionRequestProcessor;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/StaticInjectionRequest;)V
    .locals 1
    .param p2, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "request"    # Lcom/google/inject/spi/StaticInjectionRequest;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/internal/InjectionRequestProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 92
    invoke-virtual {p3}, Lcom/google/inject/spi/StaticInjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    .line 93
    iput-object p3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->request:Lcom/google/inject/spi/StaticInjectionRequest;

    .line 94
    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/internal/InjectorImpl;

    new-instance v2, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection$1;

    invoke-direct {v2, p0}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection$1;-><init>(Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;)V

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/InjectorImpl;->callInContext(Lcom/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method validate()V
    .locals 5

    .prologue
    .line 97
    iget-object v3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/internal/InjectionRequestProcessor;

    iget-object v3, v3, Lcom/google/inject/internal/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    iget-object v4, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    .line 100
    .local v1, "errorsForMember":Lcom/google/inject/internal/Errors;
    :try_start_0
    iget-object v3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->request:Lcom/google/inject/spi/StaticInjectionRequest;

    invoke-virtual {v3}, Lcom/google/inject/spi/StaticInjectionRequest;->getInjectionPoints()Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    .local v2, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :goto_0
    if-eqz v2, :cond_0

    .line 106
    iget-object v3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, v3, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v3, v2, v1}, Lcom/google/inject/internal/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/google/inject/internal/Errors;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 112
    :goto_1
    iget-object v3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/google/inject/internal/InjectionRequestProcessor;

    iget-object v3, v3, Lcom/google/inject/internal/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v3, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 113
    return-void

    .line 101
    .end local v2    # "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/google/inject/ConfigurationException;
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 103
    invoke-virtual {v0}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .restart local v2    # "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    goto :goto_0

    .line 109
    .end local v0    # "e":Lcom/google/inject/ConfigurationException;
    :cond_0
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    goto :goto_1
.end method
