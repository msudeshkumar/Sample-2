.class public abstract Lcom/coinbase/android/transfers/ConfirmTransferFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "ConfirmTransferFragment.java"


# static fields
.field public static final ACCOUNT:Ljava/lang/String; = "ConfirmTransferFragment_Account"

.field public static final AMOUNT:Ljava/lang/String; = "ConfirmTransferFragment_Amount"

.field public static final COUNTERPARTY_EMAIL:Ljava/lang/String; = "ConfirmTransferFragment_Counteryparty"

.field public static final EXCHANGE_ID:Ljava/lang/String; = "ConfirmTransferFragment_Exchange_Id"

.field public static final IDEM_TOKEN:Ljava/lang/String; = "ConfirmTransferFragment_Idem_Token"

.field public static final IS_FIAT:Ljava/lang/String; = "ConfirmTransferFragment_Is_Fiat"

.field public static final NOTES:Ljava/lang/String; = "ConfirmTransferFragment_Notes"


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mAmount:Lorg/joda/money/Money;

.field protected mCounterparty:Ljava/lang/String;

.field protected mNotes:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMessage()Ljava/lang/String;
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f02007f

    .line 40
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ConfirmTransferFragment_Counteryparty"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->mCounterparty:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ConfirmTransferFragment_Notes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->mNotes:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ConfirmTransferFragment_Amount"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lorg/joda/money/Money;

    iput-object v5, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->mAmount:Lorg/joda/money/Money;

    .line 43
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ConfirmTransferFragment_Account"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->mAccount:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03004a

    const/4 v7, 0x0

    .line 46
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "baseView":Landroid/view/View;
    const v5, 0x7f0d0155

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "message":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v5, 0x7f0d0154

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 52
    .local v3, "profile":Landroid/widget/ImageView;
    const/16 v4, 0x3c

    .line 53
    .local v4, "radius":I
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->mCounterparty:Ljava/lang/String;

    .line 54
    invoke-static {v6}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 55
    invoke-virtual {v5, v8}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    new-instance v6, Lcom/coinbase/android/utils/RoundedTransformation;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 57
    invoke-virtual {v5, v6}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v5

    .line 58
    invoke-virtual {v5, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 60
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700c7

    new-instance v7, Lcom/coinbase/android/transfers/ConfirmTransferFragment$2;

    invoke-direct {v7, p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment$2;-><init>(Lcom/coinbase/android/transfers/ConfirmTransferFragment;)V

    .line 62
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700b4

    new-instance v7, Lcom/coinbase/android/transfers/ConfirmTransferFragment$1;

    invoke-direct {v7, p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment$1;-><init>(Lcom/coinbase/android/transfers/ConfirmTransferFragment;)V

    .line 67
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 78
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 80
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 81
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 84
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 85
    return-void
.end method

.method public onUserCancel()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public abstract onUserConfirm()V
.end method
