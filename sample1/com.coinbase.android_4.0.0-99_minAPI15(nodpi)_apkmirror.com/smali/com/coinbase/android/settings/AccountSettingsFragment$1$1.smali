.class Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment$1;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    iget-object v0, v0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    # getter for: Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->access$100(Lcom/coinbase/android/settings/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 742
    return-void
.end method

.method public onFinally()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    iget-object v0, v0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    # getter for: Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->access$100(Lcom/coinbase/android/settings/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 747
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$1$1;->this$1:Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    iget-object v0, v0, Lcom/coinbase/android/settings/AccountSettingsFragment$1;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->userDataUpdated(Lcom/coinbase/android/event/UserDataUpdatedEvent;)V

    .line 748
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 737
    return-void
.end method
