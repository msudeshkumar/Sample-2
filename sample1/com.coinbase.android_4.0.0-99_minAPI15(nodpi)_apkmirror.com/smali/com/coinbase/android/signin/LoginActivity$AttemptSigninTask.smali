.class Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;
.super Lroboguice/util/RoboAsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/signin/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttemptSigninTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lroboguice/util/RoboAsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/signin/LoginActivity;


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/signin/LoginActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    .line 81
    invoke-direct {p0, p2}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 82
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v2, v2, Lcom/coinbase/android/signin/LoginActivity;->mAuthCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/coinbase/api/LoginManager;->getTokens(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;

    move-result-object v0

    .line 87
    .local v0, "tokens":Lcom/coinbase/v1/entity/OAuthTokensResponse;
    iget-object v1, p0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1, v0}, Lcom/coinbase/api/LoginManager;->signin(Lcom/coinbase/v1/entity/OAuthTokensResponse;)V

    .line 88
    const/4 v1, 0x0

    return-object v1
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/signin/LoginActivity;->onError(Ljava/lang/Exception;)V

    .line 103
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/LoginActivity;->onSignin()V

    .line 96
    :cond_0
    return-void
.end method
