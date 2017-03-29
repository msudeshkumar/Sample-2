.class Lcom/coinbase/android/accounts/AccountsFragment$1;
.super Ljava/lang/Object;
.source "AccountsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/AccountsFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/AccountsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/AccountsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/AccountsFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/coinbase/android/accounts/AccountsFragment$1;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountsFragment$1;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    iget-boolean v0, v0, Lcom/coinbase/android/accounts/AccountsFragment;->widgetMode:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountsFragment$1;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 73
    :cond_0
    return-void
.end method
