.class public Lcom/coinbase/android/buysell/SellFragment;
.super Lcom/coinbase/android/buysell/AbstractBuySellFragment;
.source "SellFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;
    }
.end annotation


# instance fields
.field mTitle:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070227
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
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
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->refreshAccounts()V

    .line 310
    return-void
.end method

.method public currencySelected(Lcom/coinbase/android/ui/CurrencySelectorLayout;)V
    .locals 1
    .param p1, "currencySelectorLayout"    # Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->updateWithNewCurrency()V

    goto :goto_0
.end method

.method protected getAccountLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/SellFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfirmationDialog()Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;-><init>()V

    return-object v0
.end method

.method protected getDefaultPaymentMethodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/coinbase/android/buysell/SellFragment;->mDefaultSell:Ljava/lang/String;

    return-object v0
.end method

.method protected getOverlayDetails()I
    .locals 1

    .prologue
    .line 141
    const v0, 0x7f0701f2

    return v0
.end method

.method protected getOverlayIcon()I
    .locals 3

    .prologue
    const v1, 0x7f02015e

    .line 122
    iget-object v2, p0, Lcom/coinbase/android/buysell/SellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "country":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    const v1, 0x7f0200c1

    goto :goto_0

    .line 130
    :cond_2
    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    const v1, 0x7f0200bf

    goto :goto_0

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/buysell/SellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->isAllowedPaymentMethodSepa()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const v1, 0x7f0200bd

    goto :goto_0
.end method

.method protected getPaymentLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/SellFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getQuote()V
    .locals 5

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getQuantityEntered()Lorg/joda/money/BigMoney;

    move-result-object v1

    .line 173
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

    .line 174
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/coinbase/android/buysell/SellFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedPaymentMethod()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coinbase/android/buysell/SellFragment;->getBuySellParams(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v0

    .line 184
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/coinbase/android/buysell/SellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/buysell/SellFragment$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/buysell/SellFragment$1;-><init>(Lcom/coinbase/android/buysell/SellFragment;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->sellBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method public getTitle()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/coinbase/android/buysell/SellFragment;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->SELLS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    invoke-virtual {v0}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initiateTransfer()V
    .locals 6

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedPaymentMethod()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v3

    if-nez v3, :cond_0

    .line 234
    :goto_0
    return-void

    .line 209
    :cond_0
    const v3, 0x7f0701f3

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/SellFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "mProgressMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 212
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/SellFragment;->getBuySellParams(Ljava/lang/Boolean;)Ljava/util/HashMap;

    move-result-object v2

    .line 214
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/coinbase/android/buysell/SellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/coinbase/android/buysell/SellFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/coinbase/android/buysell/SellFragment$2;-><init>(Lcom/coinbase/android/buysell/SellFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v3, v4, v2, v5}, Lcom/coinbase/api/internal/CoinbaseInternal;->sellBitcoin(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method

.method public onBanksUpdated(Lcom/coinbase/android/event/BankAccountsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/BankAccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->checkAccountSetupStatus()V

    .line 327
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->isShowingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const v0, 0x7f0e0005

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
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->onBuySellClick()V

    .line 301
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Sell"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x1

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0317
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
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->checkAccountSetupStatus()V

    .line 321
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->processPhoneNumbersUpdatedEvent(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method protected shouldShowAccount(Lcom/coinbase/v2/models/account/Data;)Z
    .locals 2
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->WALLET:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_0

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
    .line 151
    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getAllowSell()Ljava/lang/Boolean;

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
    .line 238
    const v4, 0x7f0701f3

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/SellFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "mProgressMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 241
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const v4, 0x7f0700b3

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/SellFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "mSuccessFormat":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 246
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

    .line 251
    .local v3, "text":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/coinbase/android/buysell/SellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v4

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/buysell/SellFragment$3;

    invoke-direct {v7, p0, v0, v3}, Lcom/coinbase/android/buysell/SellFragment$3;-><init>(Lcom/coinbase/android/buysell/SellFragment;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->commitSellBitcoin(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 277
    return-void

    .line 248
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method public userDataUpdated(Lcom/coinbase/android/event/UserDataUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/UserDataUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment;->onUserDataUpdated()V

    .line 315
    return-void
.end method
