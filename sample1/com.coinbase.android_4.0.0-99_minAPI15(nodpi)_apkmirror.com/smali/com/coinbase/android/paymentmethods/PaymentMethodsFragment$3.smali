.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;
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
    .line 261
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->toggle()V

    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/paymentmethods/card/CardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cdv"

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-boolean v2, v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresCDV:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    const-string v1, "billing_address"

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-boolean v2, v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresBillingAddress:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string v1, "jumio"

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-boolean v2, v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresJumio:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 270
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Add debit card from settings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 271
    return-void
.end method
