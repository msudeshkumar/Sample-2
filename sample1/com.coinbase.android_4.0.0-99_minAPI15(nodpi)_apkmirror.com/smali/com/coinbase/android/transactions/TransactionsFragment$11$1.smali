.class Lcom/coinbase/android/transactions/TransactionsFragment$11$1;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment$11;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/transactions/TransactionsFragment$11;

.field final synthetic val$item:Lcom/coinbase/android/quickstart/QuickstartItem;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment$11;Lcom/coinbase/android/quickstart/QuickstartItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/transactions/TransactionsFragment$11;

    .prologue
    .line 684
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$11;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;->val$item:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$11;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$11;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;->val$item:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/quickstart/QuickstartManager;->cancelQuickstartItem(Lcom/coinbase/android/quickstart/QuickstartItem;)V

    .line 688
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;->this$1:Lcom/coinbase/android/transactions/TransactionsFragment$11;

    iget-object v0, v0, Lcom/coinbase/android/transactions/TransactionsFragment$11;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->updateSetupViews()V
    invoke-static {v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$1000(Lcom/coinbase/android/transactions/TransactionsFragment;)V

    .line 689
    return-void
.end method
