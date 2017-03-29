.class public abstract Lcom/coinbase/android/dialog/ConfirmationDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "ConfirmationDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method

.method protected getNegativeButtonText()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0700b4

    return v0
.end method

.method protected getPositiveButtonText()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0700c7

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    .local v1, "message":Landroid/widget/TextView;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 24
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    const/4 v4, 0x2

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .local v3, "scale":F
    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 29
    .local v2, "paddingPx":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 31
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 35
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getPositiveButtonText()I

    move-result v5

    new-instance v6, Lcom/coinbase/android/dialog/ConfirmationDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment$2;-><init>(Lcom/coinbase/android/dialog/ConfirmationDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getNegativeButtonText()I

    move-result v5

    new-instance v6, Lcom/coinbase/android/dialog/ConfirmationDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment$1;-><init>(Lcom/coinbase/android/dialog/ConfirmationDialogFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 53
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 54
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 56
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 57
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 58
    return-void
.end method

.method public onUserCancel()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public abstract onUserConfirm()V
.end method
