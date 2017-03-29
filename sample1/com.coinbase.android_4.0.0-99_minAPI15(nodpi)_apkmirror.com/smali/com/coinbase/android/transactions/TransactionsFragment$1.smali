.class Lcom/coinbase/android/transactions/TransactionsFragment$1;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->getTransactions(Ljava/lang/String;)Lretrofit/Call;
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
        "Lcom/coinbase/v2/models/account/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 343
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
            "Lcom/coinbase/v2/models/account/Account;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/account/Account;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Account;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Account;->getData()Lcom/coinbase/v2/models/account/Data;

    move-result-object v0

    .line 335
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v2

    iput-object v2, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceBtc:Lorg/joda/money/Money;

    .line 336
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountNativeBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v2

    iput-object v2, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mBalanceNative:Lorg/joda/money/Money;

    .line 337
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$1;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->updateBalance(Lcom/coinbase/v2/models/account/Data;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$400(Lcom/coinbase/android/transactions/TransactionsFragment;Lcom/coinbase/v2/models/account/Data;)V

    goto :goto_0
.end method
