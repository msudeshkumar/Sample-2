.class Lcom/coinbase/android/signin/LoginActivity$6;
.super Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/LoginActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/LoginActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/LoginActivity;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$6;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {p0}, Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancel()V
    .locals 3

    .prologue
    .line 634
    invoke-super {p0}, Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;->onUserCancel()V

    .line 635
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$6;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$6;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/LoginActivity;->mAttemptSigninTask:Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/signin/LoginActivity$AttemptSigninTask;->cancel(Z)Z

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$6;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    const-string v1, "login_code_waiting_for_dv"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 638
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$6;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    # invokes: Lcom/coinbase/android/signin/LoginActivity;->cancel()V
    invoke-static {v0}, Lcom/coinbase/android/signin/LoginActivity;->access$100(Lcom/coinbase/android/signin/LoginActivity;)V

    .line 639
    return-void
.end method
