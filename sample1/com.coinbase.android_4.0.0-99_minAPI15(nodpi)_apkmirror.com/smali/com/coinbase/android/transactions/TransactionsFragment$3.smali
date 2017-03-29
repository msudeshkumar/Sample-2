.class Lcom/coinbase/android/transactions/TransactionsFragment$3;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$3;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$3;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->toggle()V

    .line 511
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$3;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mSendButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$3;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    const v2, 0x7f07017d

    invoke-virtual {v1, v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$3;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mListener:Lcom/coinbase/android/transactions/TransactionsFragment$Listener;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$3;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-interface {v0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$Listener;->onSendMoneyClicked(Lcom/coinbase/v2/models/account/Data;)V

    .line 513
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - send icon"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 515
    :cond_0
    return-void
.end method
