.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3$1;
.super Ljava/lang/Object;
.source "IAVLoginFragment.java"

# interfaces
.implements Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->onUserCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3$1;->this$1:Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinally()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3$1;->this$1:Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3$1;->this$1:Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 440
    :cond_0
    return-void
.end method
