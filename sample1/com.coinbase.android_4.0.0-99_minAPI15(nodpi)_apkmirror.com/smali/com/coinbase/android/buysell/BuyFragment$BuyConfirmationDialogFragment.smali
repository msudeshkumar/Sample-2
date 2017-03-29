.class public Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;
.super Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;
.source "BuyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/buysell/BuyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuyConfirmationDialogFragment"
.end annotation


# instance fields
.field protected mAmountMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700a5
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPaymentMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700a7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public getAmountMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mAmountMessageFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 75
    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 76
    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 77
    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v3, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 78
    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 74
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0700a6

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f0700a9

    goto :goto_0
.end method

.method public getFirstImage()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f02006d

    return v0
.end method

.method public getPaymentMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mPaymentMessageFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 84
    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 85
    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-static {v3, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 86
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayoutMessage()Ljava/lang/String;
    .locals 8

    .prologue
    .line 97
    iget-object v4, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getPayoutAt()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/android/utils/Utils;->getDateTimeFrom(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v3

    .line 99
    .local v3, "payout":Lorg/joda/time/DateTime;
    const-string v4, "MMMM dd, yyyy"

    invoke-virtual {v3, v4}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "date":Ljava/lang/String;
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Days;->getDays()I

    move-result v2

    .line 102
    .local v2, "days":I
    iget-object v4, p0, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0702d9

    invoke-virtual {p0, v5}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const v4, 0x7f0702dc

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "currency":Ljava/lang/String;
    :goto_0
    const v4, 0x7f0700a8

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 105
    .end local v0    # "currency":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0702c5

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "currency":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSecondImage()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f020072

    return v0
.end method

.method public onUserConfirm()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Confirm buy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public showPayoutDate()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;->isInstant()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
