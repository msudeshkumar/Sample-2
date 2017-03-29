.class public Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$ConfirmPlaidCancelDialogFragment;
.super Lcom/coinbase/android/dialog/ConfirmationDialogFragment;
.source "PlaidAccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmPlaidCancelDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$ConfirmPlaidCancelDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeButtonText()I
    .locals 1

    .prologue
    .line 489
    const v0, 0x7f0702b4

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .prologue
    .line 484
    const v0, 0x7f070189

    return v0
.end method

.method public onUserConfirm()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method
