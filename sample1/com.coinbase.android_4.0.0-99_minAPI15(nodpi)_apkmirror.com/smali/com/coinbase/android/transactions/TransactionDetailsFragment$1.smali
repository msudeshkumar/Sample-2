.class Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;
.super Ljava/lang/Object;
.source "TransactionDetailsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionDetailsFragment;->resendRequest(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    const-string v1, ""

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleTransactionError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$000(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V

    .line 153
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
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->handleTransactionError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$000(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    const v2, 0x7f070253

    invoke-virtual {v1, v2}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
