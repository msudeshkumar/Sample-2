.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$6;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 231
    new-instance v0, Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-direct {v0}, Lcom/coinbase/android/billing/BillingAddressListFragment;-><init>()V

    .line 232
    .local v0, "fragment":Lcom/coinbase/android/billing/BillingAddressListFragment;
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 233
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 234
    return-void
.end method
