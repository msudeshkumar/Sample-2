.class Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;
.super Ljava/lang/Object;
.source "TransferBitcoinFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$toSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;->val$toSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->mFromAdapter:Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;

    invoke-virtual {v0, p3}, Lcom/coinbase/android/accounts/TransferBitcoinFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/coinbase/android/accounts/TransferBitcoinFragment;->initToAccounts(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->access$000(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;->val$toSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$1;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    # invokes: Lcom/coinbase/android/accounts/TransferBitcoinFragment;->getDefaultToAccountPosition()I
    invoke-static {v1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->access$100(Lcom/coinbase/android/accounts/TransferBitcoinFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 95
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
