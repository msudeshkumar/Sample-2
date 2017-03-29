.class Lcom/coinbase/android/accounts/AccountsFragment$2;
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

.field final synthetic val$accounts:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/AccountsFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/AccountsFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/android/accounts/AccountsFragment$2;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/AccountsFragment$2;->val$accounts:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 61
    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountsFragment$2;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/accounts/AccountsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/accounts/AccountsFragment$ParentActivity;

    .line 62
    .local v0, "activity":Lcom/coinbase/android/accounts/AccountsFragment$ParentActivity;
    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountsFragment$2;->val$accounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountsFragment$2;->val$accounts:Ljava/util/List;

    iget-object v2, p0, Lcom/coinbase/android/accounts/AccountsFragment$2;->this$0:Lcom/coinbase/android/accounts/AccountsFragment;

    iget v2, v2, Lcom/coinbase/android/accounts/AccountsFragment;->selectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    invoke-interface {v0, v1}, Lcom/coinbase/android/accounts/AccountsFragment$ParentActivity;->onAccountChosen(Lcom/coinbase/v2/models/account/Data;)V

    .line 65
    :cond_0
    return-void
.end method
