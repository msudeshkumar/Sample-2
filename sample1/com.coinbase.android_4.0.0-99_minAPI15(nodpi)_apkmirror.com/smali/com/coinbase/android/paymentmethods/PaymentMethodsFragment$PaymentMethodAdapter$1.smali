.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$1;
.super Ljava/lang/Object;
.source "PaymentMethodsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$1;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 154
    .local v2, "position":I
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$1;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v3, v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 155
    .local v1, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->newInstance(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;

    move-result-object v0

    .line 156
    .local v0, "f":Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$1;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "Delete"

    invoke-virtual {v0, v3, v4}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 157
    return-void
.end method
