.class public Lcom/coinbase/android/dialog/InviteFriendsDialog;
.super Lroboguice/fragment/RoboDialogFragment;
.source "InviteFriendsDialog.java"


# instance fields
.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f02007f

    .line 36
    const/16 v5, 0x3c

    .line 38
    .local v5, "radius":I
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03004b

    const/4 v8, 0x0

    .line 39
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "baseView":Landroid/view/View;
    const v6, 0x7f0d015a

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 42
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v6, 0x7f0d0159

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 45
    .local v3, "gravatarView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/coinbase/android/dialog/InviteFriendsDialog;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getActiveUserEmail()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "email":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    .line 48
    invoke-static {v2}, Lcom/coinbase/android/utils/Utils;->getGravatarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 49
    invoke-virtual {v6, v9}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 50
    invoke-virtual {v6, v9}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/utils/RoundedTransformation;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v8}, Lcom/coinbase/android/utils/RoundedTransformation;-><init>(II)V

    .line 51
    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 52
    invoke-virtual {v6, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 54
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f070127

    new-instance v8, Lcom/coinbase/android/dialog/InviteFriendsDialog$2;

    invoke-direct {v8, p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog$2;-><init>(Lcom/coinbase/android/dialog/InviteFriendsDialog;)V

    .line 56
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0700b4

    new-instance v8, Lcom/coinbase/android/dialog/InviteFriendsDialog$1;

    invoke-direct {v8, p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog$1;-><init>(Lcom/coinbase/android/dialog/InviteFriendsDialog;)V

    .line 61
    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onStart()V

    .line 74
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 75
    .local v1, "okButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 77
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 78
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InviteFriendsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    return-void
.end method

.method public onUserCancel()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onUserInvite()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
