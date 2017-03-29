.class Lcom/coinbase/android/transfers/TransferSendFragment$8;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;->sendTransferWithoutConfirm()V
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
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iput-object p2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iput-object v1, v0, Lcom/coinbase/android/transfers/TransferSendFragment;->mIdem:Ljava/lang/String;

    .line 767
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 768
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$600(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V

    .line 769
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 3
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
    .line 750
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # getter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$500(Lcom/coinbase/android/transfers/TransferSendFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 751
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$600(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/coinbase/android/transfers/TransferSendFragment;->mIdem:Ljava/lang/String;

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->val$message:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/transactions/Transaction;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transactions/Transaction;->getData()Lcom/coinbase/v2/models/transactions/Data;

    move-result-object v0

    .line 759
    .local v0, "transaction":Lcom/coinbase/v2/models/transactions/Data;
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v1, v1, Lcom/coinbase/android/transfers/TransferSendFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/TransferMadeEvent;

    invoke-direct {v2, v0}, Lcom/coinbase/android/event/TransferMadeEvent;-><init>(Lcom/coinbase/v2/models/transactions/Data;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 760
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$8;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
