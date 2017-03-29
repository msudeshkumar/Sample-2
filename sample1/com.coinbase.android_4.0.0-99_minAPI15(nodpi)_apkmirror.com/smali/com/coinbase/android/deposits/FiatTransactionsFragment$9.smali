.class Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;
.super Ljava/lang/Object;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;->commitDeposit(Lcom/coinbase/v2/models/transfers/Transfer;)V
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
    .line 584
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iput-object p2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 608
    return-void

    .line 605
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/transfers/Transfer;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 588
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 591
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 592
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 601
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 588
    goto :goto_0

    .line 595
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/coinbase/android/event/BuySellMadeEvent;

    invoke-direct {v4}, Lcom/coinbase/android/event/BuySellMadeEvent;-><init>()V

    invoke-virtual {v1, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 596
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    const v4, 0x7f0700f3

    invoke-virtual {v1, v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "successFormat":Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;->this$0:Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    .line 599
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 598
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-static {v4, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
