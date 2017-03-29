.class public Lcom/coinbase/android/deposits/SepaDepositFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "SepaDepositFragment.java"


# instance fields
.field private isFromDeposit:Z

.field mAccountAddress:Landroid/widget/TextView;

.field mAccountNameView:Landroid/widget/TextView;

.field mBankAddress:Landroid/widget/TextView;

.field mBankCountryName:Landroid/widget/TextView;

.field mBankName:Landroid/widget/TextView;

.field mDetailsView:Landroid/view/View;

.field mIban:Landroid/widget/TextView;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProgressView:Landroid/view/View;

.field mReferenceId:Landroid/widget/TextView;

.field mSubtitle:Landroid/widget/TextView;

.field mSwift:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->isFromDeposit:Z

    return-void
.end method

.method private getSepaDepositInfo()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/deposits/SepaDepositFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/deposits/SepaDepositFragment$2;-><init>(Lcom/coinbase/android/deposits/SepaDepositFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getSepaDepositInformation(Lretrofit/Callback;)V

    .line 126
    return-void
.end method

.method public static newInstance(Z)Lcom/coinbase/android/deposits/SepaDepositFragment;
    .locals 1
    .param p0, "fromDeposit"    # Z

    .prologue
    .line 47
    new-instance v0, Lcom/coinbase/android/deposits/SepaDepositFragment;

    invoke-direct {v0}, Lcom/coinbase/android/deposits/SepaDepositFragment;-><init>()V

    .line 48
    .local v0, "f":Lcom/coinbase/android/deposits/SepaDepositFragment;
    iput-boolean p0, v0, Lcom/coinbase/android/deposits/SepaDepositFragment;->isFromDeposit:Z

    .line 49
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 57
    .local v2, "li":Landroid/view/LayoutInflater;
    const v4, 0x7f030083

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "sepaView":Landroid/view/View;
    const v4, 0x7f0d023f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mTitle:Landroid/widget/TextView;

    .line 60
    const v4, 0x7f0d023e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mDetailsView:Landroid/view/View;

    .line 61
    const v4, 0x102000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mProgressView:Landroid/view/View;

    .line 62
    const v4, 0x7f0d0241

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mIban:Landroid/widget/TextView;

    .line 63
    const v4, 0x7f0d0242

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mSwift:Landroid/widget/TextView;

    .line 64
    const v4, 0x7f0d0243

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mBankName:Landroid/widget/TextView;

    .line 65
    const v4, 0x7f0d0244

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mBankAddress:Landroid/widget/TextView;

    .line 66
    const v4, 0x7f0d0245

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mBankCountryName:Landroid/widget/TextView;

    .line 67
    const v4, 0x7f0d0246

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mAccountNameView:Landroid/widget/TextView;

    .line 68
    const v4, 0x7f0d0247

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mAccountAddress:Landroid/widget/TextView;

    .line 69
    const v4, 0x7f0d0248

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mReferenceId:Landroid/widget/TextView;

    .line 70
    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mSubtitle:Landroid/widget/TextView;

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07019f

    invoke-virtual {p0, v5}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/coinbase/android/deposits/SepaDepositFragment$1;

    invoke-direct {v6, p0}, Lcom/coinbase/android/deposits/SepaDepositFragment$1;-><init>(Lcom/coinbase/android/deposits/SepaDepositFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 81
    .local v0, "activity":Landroid/support/v7/app/AppCompatActivity;
    iget-boolean v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->isFromDeposit:Z

    if-eqz v4, :cond_1

    .line 82
    iget-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mSubtitle:Landroid/widget/TextView;

    const v5, 0x7f0701f8

    invoke-virtual {p0, v5}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const v4, 0x7f0700f4

    invoke-virtual {p0, v4}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getSepaDepositInfo()V

    .line 94
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f070071

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object v4, p0, Lcom/coinbase/android/deposits/SepaDepositFragment;->mSubtitle:Landroid/widget/TextView;

    const v5, 0x7f070072

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 88
    if-eqz v0, :cond_0

    .line 89
    const v4, 0x7f070067

    invoke-virtual {p0, v4}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 131
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 133
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v2, :cond_1

    .line 134
    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 138
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v2, :cond_0

    .line 136
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method
