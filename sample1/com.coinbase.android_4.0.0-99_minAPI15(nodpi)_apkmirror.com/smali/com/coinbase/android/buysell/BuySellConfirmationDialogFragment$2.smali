.class Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$2;
.super Ljava/lang/Object;
.source "BuySellConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->onUserConfirm()V

    .line 73
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$BuySellConfirmationListener;

    iget-object v1, p0, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$2;->this$0:Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    iget-object v1, v1, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-interface {v0, v1}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$BuySellConfirmationListener;->onBuySellConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 74
    return-void
.end method
