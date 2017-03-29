.class public Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "CDVInProgressDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030047

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .local v0, "baseView":Landroid/view/ViewGroup;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07019f

    new-instance v4, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;)V

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 44
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 45
    .local v0, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 46
    return-void
.end method

.method protected onUserConfirm()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
