.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;
.super Ljava/lang/Object;
.source "PlaidAccountLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->createAchSetupSession(Lcom/coinbase/api/internal/entity/Institution;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 503
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 536
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 5
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 506
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 507
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    # setter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    invoke-static {v2, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$002(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    .line 513
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginForm:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPINForm:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # getter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    invoke-static {v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$000(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getMfa()Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    move-result-object v0

    .line 518
    .local v0, "mfa":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;
    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->create(Ljava/lang/String;)Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    move-result-object v1

    sget-object v2, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->CODE:Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    if-ne v1, v2, :cond_1

    .line 520
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSendForm:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateSendOptionsSpinner()V
    invoke-static {v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$100(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V

    goto :goto_0

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitTitle:Landroid/widget/TextView;

    const v2, 0x7f0701ee

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 524
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitForm:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateSubmitMFAOptions()V
    invoke-static {v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$200(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V

    goto :goto_0

    .line 528
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mChooseAccountForm:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateAccountSpinner()V
    invoke-static {v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$300(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V

    goto :goto_0
.end method
