.class Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;
.super Ljava/lang/Object;
.source "DepositWithdrawConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->onUserConfirm()V

    .line 66
    iget-object v0, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v1, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->onDepositWithdrawConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 67
    return-void
.end method
