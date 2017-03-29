.class public abstract Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "DepositWithdrawConfirmationDialogFragment.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "BUY_SELL_CONFIRMATION_DIALOG_ACCOUNT"

.field public static final PAYMENT_METHOD:Ljava/lang/String; = "BUY_SELL_CONFIRMATION_DIALOG_PAYMENT_METHOD"

.field public static final TRANSFER:Ljava/lang/String; = "BUY_SELL_CONFIRMATION_DIALOG_TRANSFER"


# instance fields
.field protected mAccount:Lcom/coinbase/v2/models/account/Data;

.field protected mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

.field protected mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAmountMessage()Ljava/lang/String;
.end method

.method public abstract getDialogTitle()Ljava/lang/String;
.end method

.method public abstract getFirstImage()I
.end method

.method public abstract getPaymentMessage()Ljava/lang/String;
.end method

.method public abstract getPayoutMessage()Ljava/lang/String;
.end method

.method public abstract getSecondImage()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "BUY_SELL_CONFIRMATION_DIALOG_TRANSFER"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/coinbase/v2/models/transfers/Transfer;

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coinbase/v2/models/transfers/Transfer;

    iput-object v9, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->mTransfer:Lcom/coinbase/v2/models/transfers/Transfer;

    .line 36
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "BUY_SELL_CONFIRMATION_DIALOG_ACCOUNT"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coinbase/v2/models/account/Data;

    iput-object v9, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 37
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "BUY_SELL_CONFIRMATION_DIALOG_PAYMENT_METHOD"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v4, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coinbase/v2/models/paymentMethods/Data;

    iput-object v9, p0, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 40
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f030048

    const/4 v11, 0x0

    .line 41
    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .local v1, "baseView":Landroid/view/ViewGroup;
    const v9, 0x7f0d014c

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 44
    .local v8, "titleView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getDialogTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v9, 0x7f0d014d

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 46
    .local v3, "firstImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getFirstImage()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    const v9, 0x7f0d014f

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 48
    .local v7, "secondImageView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getSecondImage()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    const v9, 0x7f0d014e

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, "amountView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getAmountMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v9, 0x7f0d0150

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 52
    .local v5, "paymentView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getPaymentMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v9, 0x7f0d0153

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 54
    .local v6, "payoutDateView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getPayoutMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->showPayoutDate()Z

    move-result v9

    if-nez v9, :cond_0

    .line 57
    const v9, 0x7f0d0152

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    const v9, 0x7f0d0151

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0700c7

    new-instance v11, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;

    invoke-direct {v11, p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$2;-><init>(Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;)V

    .line 63
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0700b4

    new-instance v11, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$1;

    invoke-direct {v11, p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment$1;-><init>(Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;)V

    .line 69
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 82
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 83
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 86
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/DepositWithdrawConfirmationDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 87
    return-void
.end method

.method public onUserConfirm()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public showPayoutDate()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
