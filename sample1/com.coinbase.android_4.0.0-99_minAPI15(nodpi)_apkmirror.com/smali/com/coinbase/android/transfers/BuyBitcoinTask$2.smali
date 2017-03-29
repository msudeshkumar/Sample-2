.class Lcom/coinbase/android/transfers/BuyBitcoinTask$2;
.super Ljava/lang/Object;
.source "BuyBitcoinTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/BuyBitcoinTask;->commitBuy(Lcom/coinbase/v2/models/transfers/Transfer;)V
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

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/BuyBitcoinTask;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/BuyBitcoinTask;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iput-object p2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v0, v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v0, v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
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
    .line 130
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    iget-object v1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v1, v1, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v1, v1, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v1, v1, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->val$text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;->this$0:Lcom/coinbase/android/transfers/BuyBitcoinTask;

    iget-object v1, v1, Lcom/coinbase/android/transfers/BuyBitcoinTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/coinbase/android/event/BuySellMadeEvent;

    invoke-direct {v2}, Lcom/coinbase/android/event/BuySellMadeEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CommitTransferTask"

    const-string v2, "Could not complete transfer of BuySellMadeEvent"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
