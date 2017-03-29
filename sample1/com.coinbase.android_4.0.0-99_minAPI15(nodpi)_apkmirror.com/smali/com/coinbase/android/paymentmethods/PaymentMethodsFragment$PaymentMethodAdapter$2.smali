.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;
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
    .line 160
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 164
    .local v3, "position":I
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v4, v3}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 165
    .local v2, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    iget-object v4, v4, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 167
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v4, "payment_method"

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v4, "manual"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter$2;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    iget-object v4, v4, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    const/16 v5, 0x2711

    invoke-virtual {v4, v1, v5}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method
