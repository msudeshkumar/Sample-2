.class Lcom/coinbase/android/signin/LoginActivity$GetUserTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/signin/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lcom/coinbase/v1/entity/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/LoginActivity;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/signin/LoginActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    .line 494
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 495
    return-void
.end method


# virtual methods
.method public call()Lcom/coinbase/v1/entity/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->call()Lcom/coinbase/v1/entity/User;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    const v2, 0x7f070163

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 530
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity;->showLoginForm()V

    .line 531
    return-void
.end method

.method public onSuccess(Lcom/coinbase/v1/entity/User;)V
    .locals 4
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 504
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    const-class v3, Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "StateDisclosureActivity_Type"

    const-string v3, "StateDisclosureActivity_Login"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const/4 v1, 0x0

    .line 508
    .local v1, "shouldShowStateDisclosure":Z
    invoke-static {p1}, Lcom/coinbase/android/utils/Utils;->isStateVerificationRequired(Lcom/coinbase/v1/entity/User;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 v1, 0x1

    .line 512
    :cond_0
    invoke-static {p1}, Lcom/coinbase/android/utils/Utils;->isStateUnsupported(Lcom/coinbase/v1/entity/User;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    const-string v2, "STATE_UNSUPPORTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 514
    const/4 v1, 0x1

    .line 517
    :cond_1
    if-eqz v1, :cond_2

    .line 518
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v2, v0}, Lcom/coinbase/android/signin/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    :goto_0
    return-void

    .line 519
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-static {p1, v2}, Lcom/coinbase/android/utils/Utils;->isUserAgreementRequired(Lcom/coinbase/v1/entity/User;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/signin/LoginActivity;->redirectToTOSPage()V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    # invokes: Lcom/coinbase/android/signin/LoginActivity;->proceed()V
    invoke-static {v2}, Lcom/coinbase/android/signin/LoginActivity;->access$000(Lcom/coinbase/android/signin/LoginActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    check-cast p1, Lcom/coinbase/v1/entity/User;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/signin/LoginActivity$GetUserTask;->onSuccess(Lcom/coinbase/v1/entity/User;)V

    return-void
.end method
