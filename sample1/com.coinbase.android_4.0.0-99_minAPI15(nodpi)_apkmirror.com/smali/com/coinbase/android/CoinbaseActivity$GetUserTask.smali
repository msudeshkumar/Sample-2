.class Lcom/coinbase/android/CoinbaseActivity$GetUserTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "CoinbaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/CoinbaseActivity;
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
.field final synthetic this$0:Lcom/coinbase/android/CoinbaseActivity;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/CoinbaseActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    .line 188
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 189
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
    .line 193
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

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
    .line 185
    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->call()Lcom/coinbase/v1/entity/User;

    move-result-object v0

    return-object v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 231
    instance-of v0, p1, Lcom/coinbase/v1/exception/UnauthorizedException;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    const v2, 0x7f0702e1

    invoke-virtual {v1, v2}, Lcom/coinbase/android/CoinbaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/CoinbaseActivity;->signOut()V

    .line 235
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/coinbase/v1/entity/User;)V
    .locals 5
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getEmailVerified()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    const-class v4, Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v3, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v3}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    const-class v4, Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "StateDisclosureActivity_Type"

    const-string v4, "StateDisclosureActivity_Login"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x0

    .line 210
    .local v1, "shouldShowStateDisclosure":Z
    invoke-static {p1}, Lcom/coinbase/android/utils/Utils;->isStateVerificationRequired(Lcom/coinbase/v1/entity/User;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    const/4 v1, 0x1

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/coinbase/android/utils/Utils;->isStateUnsupported(Lcom/coinbase/v1/entity/User;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 215
    const-string v3, "STATE_UNSUPPORTED"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const/4 v1, 0x1

    .line 219
    :cond_3
    if-eqz v1, :cond_4

    .line 220
    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v3, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-static {p1, v3}, Lcom/coinbase/android/utils/Utils;->isUserAgreementRequired(Lcom/coinbase/v1/entity/User;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    const-class v4, Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v2, "tosIntent":Landroid/content/Intent;
    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v3, v0}, Lcom/coinbase/android/CoinbaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v3, p0, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->this$0:Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v3}, Lcom/coinbase/android/CoinbaseActivity;->finish()V

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
    .line 185
    check-cast p1, Lcom/coinbase/v1/entity/User;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/CoinbaseActivity$GetUserTask;->onSuccess(Lcom/coinbase/v1/entity/User;)V

    return-void
.end method
