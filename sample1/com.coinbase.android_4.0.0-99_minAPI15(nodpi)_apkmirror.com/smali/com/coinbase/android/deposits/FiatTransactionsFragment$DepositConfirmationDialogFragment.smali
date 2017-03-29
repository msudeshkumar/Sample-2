.class public Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;
.super Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;
.source "FiatTransactionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/deposits/FiatTransactionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DepositConfirmationDialogFragment"
.end annotation


# instance fields
.field protected mAmountMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700f1
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPaymentMessageFormat:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700f9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method public getAmountMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mAmountMessageFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 107
    invoke-static {v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getFormattedTotal(Lcom/coinbase/v2/models/transfers/Transfer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 108
    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 106
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstImage()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f02006d

    return v0
.end method

.method public getPaymentMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mPaymentMessageFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 114
    invoke-static {v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getFormattedTotal(Lcom/coinbase/v2/models/transfers/Transfer;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 115
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 113
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayoutMessage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getPayoutAt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/Utils;->getDateTimeFrom(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 126
    .local v2, "payout":Lorg/joda/time/DateTime;
    const-string v3, "MMMM dd, yyyy"

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Lorg/joda/time/DateTime;->now()Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Days;->getDays()I

    move-result v1

    .line 129
    .local v1, "days":I
    const v3, 0x7f0700af

    invoke-virtual {p0, v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;->getString(I)Ljava/lang/String;

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

    return-object v3
.end method

.method public getSecondImage()I
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f020072

    return v0
.end method

.method public onUserConfirm()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public showPayoutDate()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method
