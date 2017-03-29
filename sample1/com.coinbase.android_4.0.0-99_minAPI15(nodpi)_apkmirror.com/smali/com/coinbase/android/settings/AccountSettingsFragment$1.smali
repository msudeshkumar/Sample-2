.class Lcom/coinbase/android/settings/AccountSettingsFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;->nativeCurrencySelected(Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;)V
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
        "Lcom/coinbase/v2/models/user/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    # getter for: Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->access$100(Lcom/coinbase/android/settings/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 761
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 762
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
            "Lcom/coinbase/v2/models/user/User;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/user/User;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    new-instance v0, Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    .line 751
    .local v0, "syncAccountsTask":Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-virtual {v0}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V

    .line 756
    .end local v0    # "syncAccountsTask":Lcom/coinbase/android/task/SyncAccountsTask;
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    # getter for: Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->access$100(Lcom/coinbase/android/settings/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 754
    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
