.class Lcom/coinbase/android/settings/ManageAccountsActivity$1;
.super Ljava/lang/Object;
.source "ManageAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/ManageAccountsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/settings/ManageAccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/settings/ManageAccountsActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity$1;->this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    new-instance v0, Lcom/coinbase/android/accounts/NewAccountDialogFragment;

    invoke-direct {v0}, Lcom/coinbase/android/accounts/NewAccountDialogFragment;-><init>()V

    .line 79
    .local v0, "f":Lcom/coinbase/android/accounts/NewAccountDialogFragment;
    iget-object v1, p0, Lcom/coinbase/android/settings/ManageAccountsActivity$1;->this$0:Lcom/coinbase/android/settings/ManageAccountsActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/settings/ManageAccountsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "New account"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/accounts/NewAccountDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Add new account initiated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    return-void
.end method
