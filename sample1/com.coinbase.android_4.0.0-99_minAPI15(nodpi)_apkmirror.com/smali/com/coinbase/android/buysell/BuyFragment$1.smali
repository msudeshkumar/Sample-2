.class Lcom/coinbase/android/buysell/BuyFragment$1;
.super Ljava/lang/Object;
.source "BuyFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/BuyFragment;->getQuote()V
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


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/BuyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/BuyFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/coinbase/android/buysell/BuyFragment$1;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$1;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
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
    .line 165
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$1;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/buysell/BuyFragment$1;->this$0:Lcom/coinbase/android/buysell/BuyFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/buysell/BuyFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    goto :goto_0
.end method
