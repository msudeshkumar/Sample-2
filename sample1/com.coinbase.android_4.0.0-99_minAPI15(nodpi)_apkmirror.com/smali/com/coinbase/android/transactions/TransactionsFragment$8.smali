.class Lcom/coinbase/android/transactions/TransactionsFragment$8;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 620
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$8;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 623
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 625
    .local v0, "item":Lcom/coinbase/android/quickstart/QuickstartItem;
    invoke-static {v0}, Lcom/coinbase/android/utils/MixpanelTracking;->logTransactionEvent(Lcom/coinbase/android/quickstart/QuickstartItem;)V

    .line 627
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$8;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$8;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$8;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1, v0, v2, v3}, Lcom/coinbase/android/quickstart/QuickstartManager;->performActionForItem(Lcom/coinbase/android/quickstart/QuickstartItem;Landroid/app/Activity;Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;)V

    .line 628
    return-void
.end method
