.class Lcom/coinbase/android/quickstart/QuickstartManager$1;
.super Ljava/lang/Object;
.source "QuickstartManager.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/quickstart/QuickstartManager;->updateQuickstartItems(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/coinbase/android/quickstart/QuickstartManager;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/quickstart/QuickstartManager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

    iput-object p2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$items:Ljava/util/List;

    iput-object p3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$completion:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$completion:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 3
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;->getData()Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/RemainingVerifications;->getData()Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Data;->getRequirements()Ljava/util/List;

    move-result-object v0

    .line 193
    .local v0, "requirements":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/verifications/remainingVerifications/Requirement;>;"
    iget-object v1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$items:Ljava/util/List;

    # invokes: Lcom/coinbase/android/quickstart/QuickstartManager;->insertQuickstartItems(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v1, v0, v2}, Lcom/coinbase/android/quickstart/QuickstartManager;->access$000(Lcom/coinbase/android/quickstart/QuickstartManager;Ljava/util/List;Ljava/util/List;)V

    .line 195
    iget-object v1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

    iget-object v2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$items:Ljava/util/List;

    # invokes: Lcom/coinbase/android/quickstart/QuickstartManager;->saveQuickstartItems(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/coinbase/android/quickstart/QuickstartManager;->access$100(Lcom/coinbase/android/quickstart/QuickstartManager;Ljava/util/List;)V

    .line 197
    iget-object v1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$completion:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$1;->val$completion:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
