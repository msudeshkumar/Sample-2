.class Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;
.super Ljava/lang/Object;
.source "TransferBitcoinFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/TransferBitcoinFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

.field final synthetic val$amountInput:Landroid/widget/EditText;

.field final synthetic val$fromSpinner:Landroid/widget/Spinner;

.field final synthetic val$notesInput:Landroid/widget/EditText;

.field final synthetic val$toSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$amountInput:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$fromSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$toSpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$notesInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$amountInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "enteredAmount":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    const v3, 0x7f0701ce

    invoke-virtual {v2, v3}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v1, v1, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$fromSpinner:Landroid/widget/Spinner;

    .line 119
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    iget-object v2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v2, v2, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mToAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    iget-object v4, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$toSpinner:Landroid/widget/Spinner;

    .line 120
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/account/Data;

    iget-object v4, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$2;->val$notesInput:Landroid/widget/EditText;

    .line 121
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    # invokes: Lcom/coinbase/android/accounts/TransferBitcoinFragment;->onSubmit(Ljava/lang/String;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/account/Data;Ljava/lang/String;)V
    invoke-static {v3, v0, v1, v2, v4}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->access$200(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/account/Data;Ljava/lang/String;)V

    goto :goto_0
.end method
