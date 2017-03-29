.class Lcom/coinbase/android/settings/AccountSettingsFragment$2;
.super Ljava/util/TimerTask;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;->onConfirmSignOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$2;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$2;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    iget-object v0, v0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->signout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$2;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    # getter for: Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->access$100(Lcom/coinbase/android/settings/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 894
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$2;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/CoinbaseActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/CoinbaseActivity;->redirectToLoginPage()V

    .line 898
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$2;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->onConfirmSignOut()V

    goto :goto_0
.end method
