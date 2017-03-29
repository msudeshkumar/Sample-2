.class public Lcom/coinbase/android/transfers/BuyBitcoinTask;
.super Ljava/lang/Object;
.source "BuyBitcoinTask.java"


# instance fields
.field account:Lcom/coinbase/v2/models/account/Data;

.field context:Landroid/content/Context;

.field currency:Ljava/lang/String;

.field fragmentManager:Landroid/support/v4/app/FragmentManager;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p4, "paymentMethod"    # Lcom/coinbase/v2/models/paymentMethods/Data;
    .param p5, "currency"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 54
    iput-object p3, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->account:Lcom/coinbase/v2/models/account/Data;

    .line 55
    iput-object p4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 56
    iput-object p5, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->currency:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 59
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method public buyBitcoin(D)V
    .locals 7
    .param p1, "amount"    # D

    .prologue
    .line 63
    iget-object v2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->account:Lcom/coinbase/v2/models/account/Data;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    if-nez v2, :cond_1

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const v4, 0x7f0702d8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const v5, 0x7f0701d3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 70
    .local v0, "dialog":Landroid/app/ProgressDialog;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "amount"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "currency"

    iget-object v3, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "commit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "payment_method"

    iget-object v3, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v2, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->account:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;

    invoke-direct {v4, p0, v0}, Lcom/coinbase/android/transfers/BuyBitcoinTask$1;-><init>(Lcom/coinbase/android/transfers/BuyBitcoinTask;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->buyBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method public commitBuy(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 8
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 114
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const v5, 0x7f0700a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "progressMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 117
    .local v0, "dialog":Landroid/app/ProgressDialog;
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const v5, 0x7f0700b2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "successFormat":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->account:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;

    invoke-direct {v7, p0, v0, v3}, Lcom/coinbase/android/transfers/BuyBitcoinTask$2;-><init>(Lcom/coinbase/android/transfers/BuyBitcoinTask;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->commitBuyBitcoin(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 155
    :goto_0
    return-void

    .line 122
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    const v5, 0x7f070107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/transfers/BuyBitcoinTask;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
