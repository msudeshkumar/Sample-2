.class public Lcom/coinbase/android/buysell/BuyFragment;
.super Lcom/coinbase/android/buysell/AbstractBuySellFragment;
.source "BuyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;
    }
.end annotation


# instance fields
.field mTitle:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070225
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public accountsUpdated(Lcom/coinbase/android/event/AccountsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/AccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->refreshAccounts()V

    .line 310
    return-void
.end method

.method public currencySelected(Lcom/coinbase/android/ui/CurrencySelectorLayout;)V
    .locals 1
    .param p1, "currencySelectorLayout"    # Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->updateWithNewCurrency()V

    goto :goto_0
.end method

.method protected getAccountLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/BuyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfirmationDialog()Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;-><init>()V

    return-object v0
.end method

.method protected getDefaultPaymentMethodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment;->mDefaultBuy:Ljava/lang/String;

    return-object v0
.end method

.method protected getOverlayDetails()I
    .locals 1

    .prologue
    .line 270
    const v0, 0x7f07009f

    return v0
.end method

.method protected getOverlayIcon()I
    .locals 1

    .prologue
    .line 265
    const v0, 0x7f0200bb

    return v0
.end method

.method protected getPaymentLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/BuyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getQuote()V
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getQuantityEntered()Lorg/joda/money/BigMoney;

    move-result-object v1

    .line 150
    .local v1, "quantity":Lorg/joda/money/BigMoneyProvider;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/joda/money/BigMoneyProvider;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 151
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/coinbase/android/buysell/BuyFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedPaymentMethod()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coinbase/android/buysell/BuyFragment;->getBuySellParams(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v0

    .line 162
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/coinbase/android/buysell/BuyFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/buysell/BuyFragment$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/buysell/BuyFragment$1;-><init>(Lcom/coinbase/android/buysell/BuyFragment;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->buyBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method public getTitle()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/coinbase/android/buysell/BuyFragment;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->BUYS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    invoke-virtual {v0}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initiateTransfer()V
    .locals 6

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedPaymentMethod()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v3

    if-nez v3, :cond_0

    .line 213
    :goto_0
    return-void

    .line 188
    :cond_0
    const v3, 0x7f0700a1

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/BuyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "progressMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 191
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/BuyFragment;->getBuySellParams(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v1

    .line 193
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/coinbase/android/buysell/BuyFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/coinbase/android/buysell/BuyFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/coinbase/android/buysell/BuyFragment$2;-><init>(Lcom/coinbase/android/buysell/BuyFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/coinbase/api/internal/CoinbaseInternal;->buyBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method public onBanksUpdated(Lcom/coinbase/android/event/BankAccountsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/BankAccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->checkAccountSetupStatus()V

    .line 327
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/BuyFragment;->setRetainInstance(Z)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->isShowingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const v0, 0x7f0e0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 294
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 304
    invoke-super {p0, p1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 300
    :pswitch_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->onBuySellClick()V

    .line 301
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Buy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0315
        :pswitch_0
    .end packed-switch
.end method

.method public onPhoneNumbersUpdated(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->checkAccountSetupStatus()V

    .line 321
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->processPhoneNumbersUpdatedEvent(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method protected shouldShowAccount(Lcom/coinbase/v2/models/account/Data;)Z
    .locals 2
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 275
    invoke-static {p1}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldShowPaymentMethod(Lcom/coinbase/v2/models/paymentMethods/Data;)Z
    .locals 1
    .param p1, "method"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getAllowBuy()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transferConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 8
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 218
    const v4, 0x7f0700a1

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/BuyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "progressMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 221
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/BuyFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "successFormat":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 224
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

    .line 231
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/buysell/BuyFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/buysell/BuyFragment$3;

    invoke-direct {v7, p0, v0, v3}, Lcom/coinbase/android/buysell/BuyFragment$3;-><init>(Lcom/coinbase/android/buysell/BuyFragment;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->commitBuyBitcoin(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 256
    :goto_0
    return-void

    .line 226
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .restart local v3    # "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public userDataUpdated(Lcom/coinbase/android/event/UserDataUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/UserDataUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment;->onUserDataUpdated()V

    .line 315
    return-void
.end method
