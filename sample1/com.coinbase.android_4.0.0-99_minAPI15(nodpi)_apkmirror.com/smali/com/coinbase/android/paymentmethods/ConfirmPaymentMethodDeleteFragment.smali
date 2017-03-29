.class public Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;
.super Lcom/coinbase/android/dialog/ConfirmationDialogFragment;
.source "ConfirmPaymentMethodDeleteFragment.java"


# static fields
.field private static final PAYMENT_METHOD_ID:Ljava/lang/String; = "PaymentMethodId"


# instance fields
.field private mPaymentMethodId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;
    .locals 3
    .param p0, "paymentMethodId"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v1, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;

    invoke-direct {v1}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;-><init>()V

    .line 16
    .local v1, "f":Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "PaymentMethodId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v0}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object v1
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f0700ea

    invoke-virtual {p0, v0}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f0700e8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PaymentMethodId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->mPaymentMethodId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public onUserConfirm()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/ConfirmPaymentMethodDeleteFragment;->mPaymentMethodId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;)V

    .line 41
    .local v0, "task":Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;
    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->deletePaymentMethod()V

    .line 42
    return-void
.end method
