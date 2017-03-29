.class Lcom/coinbase/android/accounts/CreateAccountTask$1;
.super Ljava/lang/Object;
.source "CreateAccountTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/CreateAccountTask;->createAccount()V
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
        "Lcom/coinbase/v2/models/account/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/CreateAccountTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/CreateAccountTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/CreateAccountTask;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 72
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
            "Lcom/coinbase/v2/models/account/Account;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/account/Account;>;"
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/CreateAccountTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/coinbase/android/accounts/CreateAccountTask$1;->this$0:Lcom/coinbase/android/accounts/CreateAccountTask;

    iget-object v1, v1, Lcom/coinbase/android/accounts/CreateAccountTask;->context:Landroid/content/Context;

    const v2, 0x7f07029d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - New account created"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
