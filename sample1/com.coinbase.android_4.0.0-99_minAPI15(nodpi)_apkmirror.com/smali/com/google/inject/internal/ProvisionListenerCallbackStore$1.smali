.class Lcom/google/inject/internal/ProvisionListenerCallbackStore$1;
.super Lorg/roboguice/shaded/goole/common/cache/CacheLoader;
.source "ProvisionListenerCallbackStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProvisionListenerCallbackStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/cache/CacheLoader",
        "<",
        "Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;",
        "Lcom/google/inject/internal/ProvisionListenerStackCallback",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/ProvisionListenerCallbackStore;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ProvisionListenerCallbackStore;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$1;->this$0:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 2
    .param p1, "key"    # Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;",
            ")",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore$1;->this$0:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    iget-object v1, p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;->binding:Lcom/google/inject/Binding;

    # invokes: Lcom/google/inject/internal/ProvisionListenerCallbackStore;->create(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;
    invoke-static {v0, v1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->access$000(Lcom/google/inject/internal/ProvisionListenerCallbackStore;Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    check-cast p1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore$1;->load(Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v0

    return-object v0
.end method
