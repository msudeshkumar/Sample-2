.class final Lcom/google/inject/internal/InjectorShell;
.super Ljava/lang/Object;
.source "InjectorShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InjectorShell$1;,
        Lcom/google/inject/internal/InjectorShell$RootModule;,
        Lcom/google/inject/internal/InjectorShell$LoggerFactory;,
        Lcom/google/inject/internal/InjectorShell$InjectorFactory;,
        Lcom/google/inject/internal/InjectorShell$Builder;
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/internal/InjectorImpl;


# direct methods
.method private constructor <init>(Lcom/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/internal/InjectorImpl;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/inject/internal/InjectorShell$Builder;
    .param p3, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorShell$Builder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Lcom/google/inject/internal/InjectorImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Element;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/google/inject/internal/InjectorShell;->elements:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/google/inject/internal/InjectorShell;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InjectorShell$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/inject/internal/InjectorShell$Builder;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Lcom/google/inject/internal/InjectorImpl;
    .param p4, "x3"    # Lcom/google/inject/internal/InjectorShell$1;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/InjectorShell;-><init>(Lcom/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/google/inject/internal/InjectorImpl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/InjectorImpl;
    .param p1, "x1"    # Lcom/google/inject/Stage;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/google/inject/internal/InjectorShell;->bindStage(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Stage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/InjectorImpl;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/inject/internal/InjectorShell;->bindInjector(Lcom/google/inject/internal/InjectorImpl;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/InjectorImpl;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/google/inject/internal/InjectorShell;->bindLogger(Lcom/google/inject/internal/InjectorImpl;)V

    return-void
.end method

.method private static bindInjector(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 9
    .param p0, "injector"    # Lcom/google/inject/internal/InjectorImpl;

    .prologue
    .line 214
    const-class v0, Lcom/google/inject/Injector;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .line 215
    .local v2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Lcom/google/inject/Injector;>;"
    new-instance v4, Lcom/google/inject/internal/InjectorShell$InjectorFactory;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/inject/internal/InjectorShell$InjectorFactory;-><init>(Lcom/google/inject/Injector;Lcom/google/inject/internal/InjectorShell$1;)V

    .line 216
    .local v4, "injectorFactory":Lcom/google/inject/internal/InjectorShell$InjectorFactory;
    iget-object v8, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v7

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Ljavax/inject/Provider;Ljava/util/Set;)V

    invoke-interface {v8, v2, v0}, Lcom/google/inject/internal/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 220
    return-void
.end method

.method private static bindLogger(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 9
    .param p0, "injector"    # Lcom/google/inject/internal/InjectorImpl;

    .prologue
    .line 248
    const-class v0, Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .line 249
    .local v2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Ljava/util/logging/Logger;>;"
    new-instance v4, Lcom/google/inject/internal/InjectorShell$LoggerFactory;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/inject/internal/InjectorShell$LoggerFactory;-><init>(Lcom/google/inject/internal/InjectorShell$1;)V

    .line 250
    .local v4, "loggerFactory":Lcom/google/inject/internal/InjectorShell$LoggerFactory;
    iget-object v8, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    sget-object v5, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v7

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Ljavax/inject/Provider;Ljava/util/Set;)V

    invoke-interface {v8, v2, v0}, Lcom/google/inject/internal/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 254
    return-void
.end method

.method private static bindStage(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Stage;)V
    .locals 7
    .param p0, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p1, "stage"    # Lcom/google/inject/Stage;

    .prologue
    .line 274
    const-class v1, Lcom/google/inject/Stage;

    invoke-static {v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .line 275
    .local v2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Lcom/google/inject/Stage;>;"
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    new-instance v4, Lcom/google/inject/internal/ConstantFactory;

    invoke-static {p1}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    .line 282
    .local v0, "stageBinding":Lcom/google/inject/internal/InstanceBindingImpl;, "Lcom/google/inject/internal/InstanceBindingImpl<Lcom/google/inject/Stage;>;"
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1, v2, v0}, Lcom/google/inject/internal/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 283
    return-void
.end method


# virtual methods
.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell;->elements:Ljava/util/List;

    return-object v0
.end method

.method getInjector()Lcom/google/inject/internal/InjectorImpl;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell;->injector:Lcom/google/inject/internal/InjectorImpl;

    return-object v0
.end method
