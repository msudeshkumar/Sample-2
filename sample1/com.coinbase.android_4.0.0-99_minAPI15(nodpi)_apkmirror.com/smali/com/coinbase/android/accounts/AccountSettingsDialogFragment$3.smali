.class Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;
.super Ljava/lang/Object;
.source "AccountSettingsDialogFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->deleteAccount()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 173
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
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$3;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
