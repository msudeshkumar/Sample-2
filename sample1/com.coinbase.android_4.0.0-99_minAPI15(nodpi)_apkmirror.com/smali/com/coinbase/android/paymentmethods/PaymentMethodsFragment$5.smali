.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$5;
.super Ljava/lang/Object;
.source "PaymentMethodsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/coinbase/android/deposits/SepaDepositFragment;->newInstance(Z)Lcom/coinbase/android/deposits/SepaDepositFragment;

    move-result-object v0

    .line 286
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "showSepaInfo"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 287
    return-void
.end method
