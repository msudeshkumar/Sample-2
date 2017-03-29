.class Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;
.super Ljava/lang/Object;
.source "ConfirmSendTransferFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->onUserConfirm()V
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
        "Lcom/coinbase/v2/models/transactions/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    iput-object p2, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 222
    iget-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    const/4 v1, 0x0

    # invokes: Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->access$000(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;Ljava/lang/String;)V

    .line 223
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
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    iget-object v2, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    iget-object v2, v2, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 207
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->access$000(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "MESSAGE"

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->getTargetRequestCode()I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/transactions/Transaction;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/transactions/Transaction;->getData()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v1

    .line 216
    .local v1, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v2, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$3;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    iget-object v2, v2, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/coinbase/android/event/TransferMadeEvent;

    invoke-direct {v3, v1}, Lcom/coinbase/android/event/TransferMadeEvent;-><init>(Lcom/coinbase/v2/models/transactions/Data;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
