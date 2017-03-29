.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$4;
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
    .line 274
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$4;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$4;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->toggle()V

    .line 278
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$4;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->addBankAccount()V
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->access$000(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    .line 279
    return-void
.end method
