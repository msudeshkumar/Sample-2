.class Lcom/coinbase/android/billing/BillingAddressListFragment$3;
.super Ljava/lang/Object;
.source "BillingAddressListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/billing/BillingAddressListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/billing/BillingAddressListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/billing/BillingAddressListFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$3;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

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
    .line 114
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$3;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/billingAddress/Data;

    .line 117
    .local v0, "billingAddress":Lcom/coinbase/api/internal/models/billingAddress/Data;
    iget-object v2, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$3;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .line 118
    .local v1, "fragment":Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/coinbase/android/utils/BillingUtils;->getFullAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->setBillingAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$3;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->dismiss()V

    .line 121
    .end local v0    # "billingAddress":Lcom/coinbase/api/internal/models/billingAddress/Data;
    .end local v1    # "fragment":Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    :cond_0
    return-void
.end method
