.class Lcom/coinbase/android/signin/SignupActivity$4;
.super Lcom/coinbase/android/signin/SignupActivity$ConfirmLoginCancelDialogFragment;
.source "SignupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/SignupActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/SignupActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/SignupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/SignupActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/coinbase/android/signin/SignupActivity$4;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-direct {p0}, Lcom/coinbase/android/signin/SignupActivity$ConfirmLoginCancelDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancel()V
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/coinbase/android/signin/SignupActivity$4;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "signed_up_waiting_for_email_confirmation"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    invoke-super {p0}, Lcom/coinbase/android/signin/SignupActivity$ConfirmLoginCancelDialogFragment;->onUserCancel()V

    .line 372
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$4;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    # getter for: Lcom/coinbase/android/signin/SignupActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v1}, Lcom/coinbase/android/signin/SignupActivity;->access$200(Lcom/coinbase/android/signin/SignupActivity;)Lcom/coinbase/api/LoginManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->signout()Z

    .line 373
    iget-object v1, p0, Lcom/coinbase/android/signin/SignupActivity$4;->this$0:Lcom/coinbase/android/signin/SignupActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/signin/SignupActivity;->finish()V

    .line 374
    return-void
.end method
