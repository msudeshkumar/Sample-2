.class Lcom/google/inject/internal/ConstructorBindingImpl$Factory;
.super Ljava/lang/Object;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ConstructorBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private allowCircularProxy:Z

.field private constructorInjector:Lcom/google/inject/internal/ConstructorInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ConstructorInjector",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final failIfNotLinked:Z

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field

.field private provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLcom/google/inject/Key;)V
    .locals 0
    .param p1, "failIfNotLinked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/inject/Key",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/google/inject/internal/ConstructorBindingImpl$Factory;, "Lcom/google/inject/internal/ConstructorBindingImpl$Factory<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-boolean p1, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->failIfNotLinked:Z

    .line 255
    iput-object p2, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->key:Lcom/google/inject/Key;

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;)Lcom/google/inject/internal/ConstructorInjector;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/ConstructorBindingImpl$Factory;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/internal/ConstructorInjector;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/internal/ConstructorInjector;)Lcom/google/inject/internal/ConstructorInjector;
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/ConstructorBindingImpl$Factory;
    .param p1, "x1"    # Lcom/google/inject/internal/ConstructorInjector;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/internal/ConstructorInjector;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/ConstructorBindingImpl$Factory;
    .param p1, "x1"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->allowCircularProxy:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/inject/internal/ConstructorBindingImpl$Factory;Lcom/google/inject/internal/ProvisionListenerStackCallback;)Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/ConstructorBindingImpl$Factory;
    .param p1, "x1"    # Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-object p1
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 6
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p4, "linked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/google/inject/internal/ConstructorBindingImpl$Factory;, "Lcom/google/inject/internal/ConstructorBindingImpl$Factory<TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/internal/ConstructorInjector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Constructor not ready"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 263
    iget-boolean v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->failIfNotLinked:Z

    if-eqz v0, :cond_1

    if-nez p4, :cond_1

    .line 264
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->key:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->jitDisabled(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->constructorInjector:Lcom/google/inject/internal/ConstructorInjector;

    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->allowCircularProxy:Z

    iget-object v5, p0, Lcom/google/inject/internal/ConstructorBindingImpl$Factory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/ConstructorInjector;->construct(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Class;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
