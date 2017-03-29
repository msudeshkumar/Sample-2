.class Lcom/google/inject/spi/ProviderLookup$1;
.super Ljava/lang/Object;
.source "ProviderLookup.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderWithDependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/spi/ProviderLookup;->getProvider()Lcom/google/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ProviderWithDependencies",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/spi/ProviderLookup;


# direct methods
.method constructor <init>(Lcom/google/inject/spi/ProviderLookup;)V
    .locals 0

    .prologue
    .line 90
    .local p0, "this":Lcom/google/inject/spi/ProviderLookup$1;, "Lcom/google/inject/spi/ProviderLookup.1;"
    iput-object p1, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/inject/spi/ProviderLookup$1;, "Lcom/google/inject/spi/ProviderLookup.1;"
    iget-object v0, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    # getter for: Lcom/google/inject/spi/ProviderLookup;->delegate:Lcom/google/inject/Provider;
    invoke-static {v0}, Lcom/google/inject/spi/ProviderLookup;->access$000(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This Provider cannot be used until the Injector has been created."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    # getter for: Lcom/google/inject/spi/ProviderLookup;->delegate:Lcom/google/inject/Provider;
    invoke-static {v0}, Lcom/google/inject/spi/ProviderLookup;->access$000(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 3
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
    .line 100
    .local p0, "this":Lcom/google/inject/spi/ProviderLookup$1;, "Lcom/google/inject/spi/ProviderLookup.1;"
    iget-object v1, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    # getter for: Lcom/google/inject/spi/ProviderLookup;->key:Lcom/google/inject/Key;
    invoke-static {v1}, Lcom/google/inject/spi/ProviderLookup;->access$100(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Key;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    # getter for: Lcom/google/inject/spi/ProviderLookup;->key:Lcom/google/inject/Key;
    invoke-static {v2}, Lcom/google/inject/spi/ProviderLookup;->access$100(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/google/inject/util/Types;->providerOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/inject/Key;->ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v0

    .line 101
    .local v0, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    .local p0, "this":Lcom/google/inject/spi/ProviderLookup$1;, "Lcom/google/inject/spi/ProviderLookup.1;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provider<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/spi/ProviderLookup$1;->this$0:Lcom/google/inject/spi/ProviderLookup;

    # getter for: Lcom/google/inject/spi/ProviderLookup;->key:Lcom/google/inject/Key;
    invoke-static {v1}, Lcom/google/inject/spi/ProviderLookup;->access$100(Lcom/google/inject/spi/ProviderLookup;)Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
