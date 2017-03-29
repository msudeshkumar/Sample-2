.class Lcom/coinbase/android/signin/TwoFactorActivity$6;
.super Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;
.source "TwoFactorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/TwoFactorActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/TwoFactorActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/TwoFactorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/TwoFactorActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/coinbase/android/signin/TwoFactorActivity$6;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-direct {p0}, Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancel()V
    .locals 3

    .prologue
    .line 212
    invoke-super {p0}, Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;->onUserCancel()V

    .line 213
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$6;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    const-string v1, "login_code_waiting_for_dv"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$6;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/signin/TwoFactorActivity;->setResult(I)V

    .line 215
    iget-object v0, p0, Lcom/coinbase/android/signin/TwoFactorActivity$6;->this$0:Lcom/coinbase/android/signin/TwoFactorActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/TwoFactorActivity;->finish()V

    .line 216
    return-void
.end method
