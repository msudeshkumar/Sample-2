.class Lcom/coinbase/android/transactions/TransactionsFragment$11;
.super Landroid/widget/ArrayAdapter;
.source "TransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->updateSetupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/android/quickstart/QuickstartItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 677
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 680
    invoke-virtual {p0, p1}, Lcom/coinbase/android/transactions/TransactionsFragment$11;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/quickstart/QuickstartItem;

    .line 681
    .local v1, "item":Lcom/coinbase/android/quickstart/QuickstartItem;
    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionsFragment$11;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/coinbase/android/quickstart/QuickstartManager;->prepareItemView(Landroid/content/Context;Lcom/coinbase/android/quickstart/QuickstartItem;)Landroid/widget/RelativeLayout;

    move-result-object v2

    .line 683
    .local v2, "view":Landroid/widget/RelativeLayout;
    const v3, 0x7f0d02e6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 684
    .local v0, "cancel":Landroid/widget/ImageButton;
    new-instance v3, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/transactions/TransactionsFragment$11$1;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment$11;Lcom/coinbase/android/quickstart/QuickstartItem;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    return-object v2
.end method
