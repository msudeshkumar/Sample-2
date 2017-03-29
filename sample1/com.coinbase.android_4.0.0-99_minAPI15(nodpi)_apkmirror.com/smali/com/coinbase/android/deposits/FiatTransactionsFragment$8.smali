.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;
.super Ljava/lang/Object;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->withdraw(Lorg/joda/money/Money;)V
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
        "Lcom/coinbase/v2/models/transfers/Transfer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iput-object p2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 5
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 553
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 555
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 556
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 568
    :goto_0
    return-void

    .line 560
    :cond_1
    new-instance v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$WithdrawConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$WithdrawConfirmationDialogFragment;-><init>()V

    .line 561
    .local v1, "f":Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 562
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 563
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "BUY_SELL_CONFIRMATION_DIALOG_TRANSFER"

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v3, "BUY_SELL_CONFIRMATION_DIALOG_ACCOUNT"

    iget-object v4, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;
    invoke-static {v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$200(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "BUY_SELL_CONFIRMATION_DIALOG_PAYMENT_METHOD"

    iget-object v4, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    # getter for: Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->access$300(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {v1, v0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 567
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "confirm"

    invoke-virtual {v1, v3, v4}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
