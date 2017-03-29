.class public interface abstract Lcom/coinbase/ApiInterface;
.super Ljava/lang/Object;
.source "ApiInterface.java"


# virtual methods
.method public abstract buyBitcoin(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{id}/buys"
    .end annotation
.end method

.method public abstract cancelRequest(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "transaction_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "accounts/{account_id}/transactions/{transaction_id}"
    .end annotation
.end method

.method public abstract commitBuyBitcoin(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "buy_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/buys/{buy_id}/commit"
    .end annotation
.end method

.method public abstract commitDeposit(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "deposit_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/deposits/{deposit_id}/commit"
    .end annotation
.end method

.method public abstract commitSellBitcoin(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "sell_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/sells/{sell_id}/commit"
    .end annotation
.end method

.method public abstract commitWithdraw(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "withdrawal_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/withdrawals/{withdrawal_id}/commit"
    .end annotation
.end method

.method public abstract completeRequest(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "transaction_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/transactions/{transaction_id}/complete"
    .end annotation
.end method

.method public abstract createAccount(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/account/Account;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts"
    .end annotation
.end method

.method public abstract deleteAccount(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "accounts/{id}"
    .end annotation
.end method

.method public abstract depositFunds(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/deposits"
    .end annotation
.end method

.method public abstract generateAddress(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/address/Address;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/addresses"
    .end annotation
.end method

.method public abstract getAccount(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/account/Account;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "accounts/{id}"
    .end annotation
.end method

.method public abstract getAccounts(Ljava/util/Map;)Lretrofit/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/account/Accounts;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "accounts"
    .end annotation
.end method

.method public abstract getPaymentMethod(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "payment-methods/{id}"
    .end annotation
.end method

.method public abstract getPaymentMethods(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "payment-methods"
    .end annotation
.end method

.method public abstract getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "base_currency"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "fiat_currency"
        .end annotation
    .end param
    .param p3    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/spotPrice/SpotPrice;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "prices/{base_currency}-{fiat_currency}/spot"
    .end annotation
.end method

.method public abstract getTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "transaction_id"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lretrofit/http/Query;
            value = "expand[]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "accounts/{account_id}/transactions/{transaction_id}"
    .end annotation
.end method

.method public abstract getTransactions(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit/http/Query;
            value = "expand[]"
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transactions;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "accounts/{id}/transactions"
    .end annotation
.end method

.method public abstract getUser()Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/user/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "user"
    .end annotation
.end method

.method public abstract requestMoney(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{id}/transactions"
    .end annotation
.end method

.method public abstract resendRequest(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "transaction_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/transactions/{transaction_id}/resend"
    .end annotation
.end method

.method public abstract sellBitcoin(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{id}/sells"
    .end annotation
.end method

.method public abstract sendMoney(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{id}/transactions"
    .end annotation
.end method

.method public abstract setAccountPrimary(Ljava/lang/String;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit/Call",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{id}/primary"
    .end annotation
.end method

.method public abstract transferMoney(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transactions/Transaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{id}/transactions"
    .end annotation
.end method

.method public abstract updateAccount(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/account/Account;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "accounts/{id}"
    .end annotation
.end method

.method public abstract updateUser(Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/user/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "user"
    .end annotation
.end method

.method public abstract withdrawFunds(Ljava/lang/String;Ljava/util/HashMap;)Lretrofit/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit/Call",
            "<",
            "Lcom/coinbase/v2/models/transfers/Transfer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "accounts/{account_id}/withdrawals"
    .end annotation
.end method
