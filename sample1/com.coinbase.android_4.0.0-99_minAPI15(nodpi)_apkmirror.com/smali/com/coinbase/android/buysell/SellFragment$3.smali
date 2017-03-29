.class Lcom/coinbase/android/buysell/SellFragment$3;
.super Ljava/lang/Object;
.source "SellFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/SellFragment;->transferConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
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
.field final synthetic this$0:Lcom/coinbase/android/buysell/SellFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/SellFragment;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/SellFragment;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/coinbase/android/buysell/SellFragment$3;->this$0:Lcom/coinbase/android/buysell/SellFragment;

    iput-object p2, p0, Lcom/coinbase/android/buysell/SellFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/coinbase/android/buysell/SellFragment$3;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/coinbase/android/buysell/SellFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    iget-object v0, p0, Lcom/coinbase/android/buysell/SellFragment$3;->this$0:Lcom/coinbase/android/buysell/SellFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
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
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    iget-object v1, p0, Lcom/coinbase/android/buysell/SellFragment$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 256
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/coinbase/android/buysell/SellFragment$3;->this$0:Lcom/coinbase/android/buysell/SellFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 268
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/buysell/SellFragment$3;->this$0:Lcom/coinbase/android/buysell/SellFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/buysell/SellFragment$3;->val$text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/buysell/SellFragment$3;->this$0:Lcom/coinbase/android/buysell/SellFragment;

    iget-object v1, v1, Lcom/coinbase/android/buysell/SellFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/BuySellMadeEvent;

    invoke-direct {v2}, Lcom/coinbase/android/event/BuySellMadeEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommitTransferTask"

    const-string v2, "Could not complete transfer of BuySellMadeEvent"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
