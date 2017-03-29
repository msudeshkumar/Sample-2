.class public Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "PINPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/pin/PINPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmCancelDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "message":Landroid/widget/TextView;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 45
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    const/4 v4, 0x2

    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 48
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v3, "scale":F
    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 50
    .local v2, "paddingPx":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070099

    new-instance v6, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment$2;-><init>(Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;)V

    .line 56
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070183

    new-instance v6, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment$1;-><init>(Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;)V

    .line 61
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onUserConfirm()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/coinbase/android/pin/PINPromptActivity$ConfirmCancelDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/pin/PINPromptActivity;

    # invokes: Lcom/coinbase/android/pin/PINPromptActivity;->onUserCancel()V
    invoke-static {v0}, Lcom/coinbase/android/pin/PINPromptActivity;->access$000(Lcom/coinbase/android/pin/PINPromptActivity;)V

    .line 75
    return-void
.end method
