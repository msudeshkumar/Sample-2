.class Lcom/coinbase/android/transfers/BuyBitcoinTask$1;
.super Ljava/lang/Object;
.source "BuyBitcoinTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/BuyBitcoinTask;->buyBitcoin(D)V
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
.field final synthetic this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/BuyBitcoinTask;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/BuyBitcoinTask;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iput-object p2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v0, v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v0, v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
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
    .line 81
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v4, v4, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 82
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v4, v4, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    invoke-static {p1, p2, v4}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 100
    :goto_0
    return-void

    .line 89
    :cond_1
    new-instance v1, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;-><init>()V

    .line 91
    .local v1, "dialog":Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 92
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "transferString":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "BUY_SELL_CONFIRMATION_DIALOG_TRANSFER"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v4, "BUY_SELL_CONFIRMATION_DIALOG_ACCOUNT"

    iget-object v5, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/BuyBitcoinTask;->account:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v4, "BUY_SELL_CONFIRMATION_DIALOG_PAYMENT_METHOD"

    iget-object v5, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v5, v5, Lcom/coinbase/android/transfers/BuyBitcoinTask;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 99
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v4, v4, Lcom/coinbase/android/transfers/BuyBitcoinTask;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
