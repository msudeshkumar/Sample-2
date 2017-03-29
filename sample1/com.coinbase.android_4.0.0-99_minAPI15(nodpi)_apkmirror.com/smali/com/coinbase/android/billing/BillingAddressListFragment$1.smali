.class Lcom/coinbase/android/billing/BillingAddressListFragment$1;
.super Ljava/lang/Object;
.source "BillingAddressListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$1;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$1;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/billing/AddBillingAddressActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$1;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$1;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/billing/BillingAddressListFragment;->dismiss()V

    .line 98
    return-void
.end method
