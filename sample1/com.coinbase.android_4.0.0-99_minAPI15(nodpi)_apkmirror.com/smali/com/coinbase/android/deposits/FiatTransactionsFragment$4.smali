.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$4;
.super Ljava/lang/Object;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$4;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

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
    .line 426
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$4;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$4;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/Data;

    # setter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v1, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$302(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 427
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
    .line 431
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
