.class Lcom/coinbase/android/buysell/BuyFragment$2;
.super Ljava/lang/Object;
.source "BuyFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/BuyFragment;->initiateTransfer()V
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
.field final synthetic this$0:Lcom/coinbase/android/buysell/BuyFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/BuyFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/BuyFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    iput-object p2, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
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
    .line 196
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 197
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/buysell/BuyFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 203
    iget-object v1, p0, Lcom/coinbase/android/buysell/BuyFragment$2;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/buysell/BuyFragment;->showTransferConfirmationDialog(Lcom/coinbase/v2/models/transfers/Transfer;)V

    goto :goto_0
.end method
