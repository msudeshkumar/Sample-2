.class Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;
.super Ljava/lang/Object;
.source "DeletePaymentMethodTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->deletePaymentMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    const v2, 0x7f0700d3

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    new-instance v0, Lcom/coinbase/android/task/SyncAccountsTask;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    .line 55
    .local v0, "task":Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-virtual {v0}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V

    .line 57
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v2, v2, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    const v3, 0x7f0701ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->bus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;

    invoke-direct {v2}, Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    # getter for: Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->listener:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;
    invoke-static {v1}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->access$000(Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;)Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;->this$0:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    # getter for: Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->listener:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;
    invoke-static {v1}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->access$000(Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;)Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;->onFinally()V

    goto :goto_0
.end method
