.class Lcom/coinbase/api/ProductionLoginManager$1$1;
.super Ljava/lang/Object;
.source "ProductionLoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/api/ProductionLoginManager$1;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/api/ProductionLoginManager$1;


# direct methods
.method constructor <init>(Lcom/coinbase/api/ProductionLoginManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/api/ProductionLoginManager$1;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/coinbase/api/ProductionLoginManager$1$1;->this$1:Lcom/coinbase/api/ProductionLoginManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/coinbase/api/ProductionLoginManager$1$1;->this$1:Lcom/coinbase/api/ProductionLoginManager$1;

    iget-object v0, v0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    # getter for: Lcom/coinbase/api/ProductionLoginManager;->retryCount:I
    invoke-static {v0}, Lcom/coinbase/api/ProductionLoginManager;->access$000(Lcom/coinbase/api/ProductionLoginManager;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/coinbase/api/ProductionLoginManager$1$1;->this$1:Lcom/coinbase/api/ProductionLoginManager$1;

    iget-object v0, v0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    # operator++ for: Lcom/coinbase/api/ProductionLoginManager;->retryCount:I
    invoke-static {v0}, Lcom/coinbase/api/ProductionLoginManager;->access$008(Lcom/coinbase/api/ProductionLoginManager;)I

    .line 281
    iget-object v0, p0, Lcom/coinbase/api/ProductionLoginManager$1$1;->this$1:Lcom/coinbase/api/ProductionLoginManager$1;

    iget-object v0, v0, Lcom/coinbase/api/ProductionLoginManager$1;->this$0:Lcom/coinbase/api/ProductionLoginManager;

    # invokes: Lcom/coinbase/api/ProductionLoginManager;->updateAccounts()V
    invoke-static {v0}, Lcom/coinbase/api/ProductionLoginManager;->access$100(Lcom/coinbase/api/ProductionLoginManager;)V

    .line 283
    :cond_0
    return-void
.end method
