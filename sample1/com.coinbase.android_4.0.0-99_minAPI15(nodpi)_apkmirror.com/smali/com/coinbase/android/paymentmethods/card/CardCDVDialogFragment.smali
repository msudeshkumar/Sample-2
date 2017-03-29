.class public Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;
.super Lcom/coinbase/android/dialog/ConfirmationDialogFragment;
.source "CardCDVDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const v0, 0x7f0702c7

    invoke-virtual {p0, v0}, Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f07019f

    return v0
.end method

.method public onUserConfirm()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
