.class Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "AddPaymentMethodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddPaymentMethodTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIban:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSwift:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bankName"    # Ljava/lang/String;
    .param p4, "iban"    # Ljava/lang/String;
    .param p5, "swift"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->this$0:Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;

    .line 35
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p3, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mIban:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mSwift:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mIban:Ljava/lang/String;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mSwift:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createSepaBankAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/PaymentMethodResponse;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onException(Ljava/lang/Exception;)V

    .line 63
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->this$0:Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    return-void
.end method

.method protected onFinally()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 69
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onPreExecute()V

    .line 44
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->context:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->context:Landroid/content/Context;

    const v3, 0x7f0700dc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 45
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onSuccess(Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->this$0:Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->this$0:Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->context:Landroid/content/Context;

    const v2, 0x7f0701aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    return-void
.end method
