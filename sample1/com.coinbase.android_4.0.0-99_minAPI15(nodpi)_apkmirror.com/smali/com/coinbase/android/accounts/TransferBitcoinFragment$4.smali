.class Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;
.super Ljava/lang/Object;
.source "TransferBitcoinFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/TransferBitcoinFragment;->transferMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/coinbase/android/accounts/TransferBitcoinFragment;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->access$400(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;)V

    .line 238
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
    .line 220
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transactions/Transaction;>;"
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 221
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/coinbase/android/accounts/TransferBitcoinFragment;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->access$400(Lcom/coinbase/android/accounts/TransferBitcoinFragment;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v1, v1, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f070082

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Successful transfer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$4;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
