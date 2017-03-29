.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;
.super Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$ConfirmPlaidCancelDialogFragment;
.source "PlaidAccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$ConfirmPlaidCancelDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancel()V
    .locals 3

    .prologue
    .line 446
    invoke-super {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$ConfirmPlaidCancelDialogFragment;->onUserCancel()V

    .line 448
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # getter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$000(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # getter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$000(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    new-instance v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # getter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    invoke-static {v2}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$000(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;->execute()V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
