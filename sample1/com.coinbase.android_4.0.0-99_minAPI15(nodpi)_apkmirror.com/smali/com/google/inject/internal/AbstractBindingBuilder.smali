.class public abstract Lcom/google/inject/internal/AbstractBindingBuilder;
.super Ljava/lang/Object;
.source "AbstractBindingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANNOTATION_ALREADY_SPECIFIED:Ljava/lang/String; = "More than one annotation is specified for this binding."

.field public static final BINDING_TO_NULL:Ljava/lang/String; = "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

.field public static final CONSTANT_VALUE_ALREADY_SET:Ljava/lang/String; = "Constant value is set more than once."

.field public static final IMPLEMENTATION_ALREADY_SET:Ljava/lang/String; = "Implementation is set more than once."

.field protected static final NULL_KEY:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SCOPE_ALREADY_SET:Ljava/lang/String; = "Scope is set more than once."

.field public static final SINGLE_INSTANCE_AND_SCOPE:Ljava/lang/String; = "Setting the scope is not permitted when binding to a single instance."


# instance fields
.field protected final binder:Lcom/google/inject/Binder;

.field private binding:Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field protected position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/AbstractBindingBuilder;->NULL_KEY:Lcom/google/inject/Key;

    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 2
    .param p1, "binder"    # Lcom/google/inject/Binder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Element;>;"
    .local p4, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    .line 56
    iput-object p2, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->elements:Ljava/util/List;

    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->position:I

    .line 58
    new-instance v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    sget-object v1, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    invoke-direct {v0, p3, p4, v1}, Lcom/google/inject/internal/UntargettedBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    iput-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    .line 59
    iget v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->position:I

    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected annotatedWithInternal(Ljava/lang/Class;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "annotationType"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotAnnotated()V

    .line 76
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    return-object v0
.end method

.method protected annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    const-string v0, "annotation"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotAnnotated()V

    .line 84
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    return-object v0
.end method

.method public asEagerSingleton()V
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 102
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/Scoping;->EAGER_SINGLETON:Lcom/google/inject/internal/Scoping;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 103
    return-void
.end method

.method protected checkNotAnnotated()V
    .locals 3

    .prologue
    .line 116
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "More than one annotation is specified for this binding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method protected checkNotScoped()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    instance-of v0, v0, Lcom/google/inject/spi/InstanceBinding;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Setting the scope is not permitted when binding to a single instance."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Scoping;->isExplicitlyScoped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Scope is set more than once."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected checkNotTargetted()V
    .locals 3

    .prologue
    .line 110
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    instance-of v0, v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binder:Lcom/google/inject/Binder;

    const-string v1, "Implementation is set more than once."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected getBinding()Lcom/google/inject/internal/BindingImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    return-object v0
.end method

.method public in(Lcom/google/inject/Scope;)V
    .locals 2
    .param p1, "scope"    # Lcom/google/inject/Scope;

    .prologue
    .line 95
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    const-string v0, "scope"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 97
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/google/inject/internal/Scoping;->forInstance(Lcom/google/inject/Scope;)Lcom/google/inject/internal/Scoping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 98
    return-void
.end method

.method public in(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    .local p1, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "scopeAnnotation"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->checkNotScoped()V

    .line 91
    invoke-virtual {p0}, Lcom/google/inject/internal/AbstractBindingBuilder;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-static {p1}, Lcom/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Scoping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingImpl;->withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    .line 92
    return-void
.end method

.method protected keyTypeIsSet()Z
    .locals 2

    .prologue
    .line 106
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/inject/internal/AbstractBindingBuilder;, "Lcom/google/inject/internal/AbstractBindingBuilder<TT;>;"
    .local p1, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iput-object p1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->binding:Lcom/google/inject/internal/BindingImpl;

    .line 68
    iget-object v0, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->elements:Ljava/util/List;

    iget v1, p0, Lcom/google/inject/internal/AbstractBindingBuilder;->position:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object p1
.end method
