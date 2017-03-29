.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;
.super Lcom/coinbase/android/paymentmethods/IAVLoginFragment$ConfirmPlaidCancelDialogFragment;
.source "IAVLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$ConfirmPlaidCancelDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancel()V
    .locals 4

    .prologue
    .line 426
    invoke-super {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$ConfirmPlaidCancelDialogFragment;->onUserCancel()V

    .line 429
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 430
    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCdvStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 431
    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCdvStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    move-result-object v1

    sget-object v2, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->READY:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    if-ne v1, v2, :cond_1

    .line 434
    :cond_0
    new-instance v0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v2, v2, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3$1;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;)V

    .line 442
    .local v0, "task":Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;
    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->deletePaymentMethod()V

    .line 446
    .end local v0    # "task":Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
