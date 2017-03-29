.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;
.super Ljava/lang/Object;
.source "PlaidAccountLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->submitMFA(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
        "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 600
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;>;"
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 584
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 588
    :cond_0
    const-string v0, "Coinbase"

    const-string v1, "Completed MFA"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    # setter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    invoke-static {v1, v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$002(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    .line 592
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateAccountSpinner()V
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$300(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V

    .line 593
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mChooseAccountForm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
