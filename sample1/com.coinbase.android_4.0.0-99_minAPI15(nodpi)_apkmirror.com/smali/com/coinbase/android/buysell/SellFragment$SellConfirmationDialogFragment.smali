.class public Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;
.super Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;
.source "SellFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/buysell/SellFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SellConfirmationDialogFragment"
.end annotation


# instance fields
.field protected mAmountMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700ad
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPaymentMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700ae
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/coinbase/android/buysell/BuyFragment$BuyConfirmationDialogFragment;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public getAmountMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mAmountMessageFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 73
    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 74
    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v3, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 75
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstImage()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f020072

    return v0
.end method

.method public getPaymentMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mPaymentMessageFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 81
    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 82
    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v3, v4, v5}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 83
    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayoutMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->isInstant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const v3, 0x7f0700b0

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    :goto_0
    return-object v3

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getPayoutAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/Utils;->getDateTimeFrom(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 98
    .local v2, "payout":Lorg/joda/time/DateTime;
    const-string v3, "MMMM dd, yyyy"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Days;->getDays()I

    move-result v1

    .line 100
    .local v1, "days":I
    const v3, 0x7f0700af

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/SellFragment$SellConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getSecondImage()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f02006d

    return v0
.end method

.method public onUserConfirm()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Confirm sell"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public showPayoutDate()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method
