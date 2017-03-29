.class public Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;
.super Lcom/coinbase/android/dialog/ConfirmationDialogFragment;
.source "ConfirmLoginCancelDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/coinbase/android/signin/ConfirmLoginCancelDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNegativeButtonText()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0702b4

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f070189

    return v0
.end method

.method public onUserConfirm()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method
