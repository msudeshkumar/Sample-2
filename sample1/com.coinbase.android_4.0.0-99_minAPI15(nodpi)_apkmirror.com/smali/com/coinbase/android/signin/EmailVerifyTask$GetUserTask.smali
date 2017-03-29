.class Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "EmailVerifyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/signin/EmailVerifyTask;
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
.field final synthetic this$0:Lcom/coinbase/android/signin/EmailVerifyTask;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/signin/EmailVerifyTask;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    .line 25
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 26
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
    .line 30
    invoke-virtual {p0}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

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
    .line 23
    invoke-virtual {p0}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->call()Lcom/coinbase/v1/entity/User;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Lcom/coinbase/v1/entity/User;)V
    .locals 1
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/EmailVerifyTask;->cancel()V

    .line 37
    invoke-virtual {p0}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask;->mListener:Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getEmailVerified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask;->mListener:Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;

    invoke-interface {v0, p1}, Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;->onEmailVerified(Lcom/coinbase/v1/entity/User;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/EmailVerifyTask;->execute()V

    .line 48
    iget-object v0, p0, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->this$0:Lcom/coinbase/android/signin/EmailVerifyTask;

    iget-object v0, v0, Lcom/coinbase/android/signin/EmailVerifyTask;->mListener:Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;

    invoke-interface {v0}, Lcom/coinbase/android/signin/EmailVerifyTask$EmailVerifyListener;->onEmailUnverified()V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    check-cast p1, Lcom/coinbase/v1/entity/User;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/signin/EmailVerifyTask$GetUserTask;->onSuccess(Lcom/coinbase/v1/entity/User;)V

    return-void
.end method
