.class public Lcom/coinbase/android/phone/DeletePhoneNumberFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "DeletePhoneNumberFragment.java"


# static fields
.field public static final PHONE_ID_KEY:Ljava/lang/String; = "DeletePhoneNumber_Phone"

.field public static final PHONE_IS_VERIFIED_KEY:Ljava/lang/String; = "DeletePhoneNumber_IsVerified"


# instance fields
.field private isVerified:Z

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/coinbase/android/phone/DeletePhoneNumberFragment;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "isVerified"    # Z

    .prologue
    .line 29
    new-instance v1, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;

    invoke-direct {v1}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;-><init>()V

    .line 30
    .local v1, "f":Lcom/coinbase/android/phone/DeletePhoneNumberFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "DeletePhoneNumber_Phone"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v2, "DeletePhoneNumber_IsVerified"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x2

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f07021e

    invoke-virtual {p0, v0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0700eb

    invoke-virtual {p0, v0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DeletePhoneNumber_Phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->mId:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DeletePhoneNumber_IsVerified"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->isVerified:Z

    .line 42
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 48
    .local v2, "li":Landroid/view/LayoutInflater;
    const v6, 0x7f030088

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 50
    .local v3, "textDialogView":Landroid/view/View;
    const v6, 0x7f0d0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :goto_0
    const v6, 0x7f0d0256

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 59
    .local v5, "userInput":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getInputType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    iget-boolean v6, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->isVerified:Z

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 62
    const v6, 0x7f0d0255

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-boolean v6, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->isVerified:Z

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 68
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    const v6, 0x7f07019f

    new-instance v7, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;

    invoke-direct {v7, p0, v5}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$1;-><init>(Lcom/coinbase/android/phone/DeletePhoneNumberFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    const v6, 0x7f0700b4

    new-instance v7, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$2;

    invoke-direct {v7, p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment$2;-><init>(Lcom/coinbase/android/phone/DeletePhoneNumberFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 54
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "label":Landroid/widget/TextView;
    .end local v5    # "userInput":Landroid/widget/EditText;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v5    # "userInput":Landroid/widget/EditText;
    :cond_1
    move v6, v8

    .line 60
    goto :goto_1

    .restart local v1    # "label":Landroid/widget/TextView;
    :cond_2
    move v7, v8

    .line 64
    goto :goto_2
.end method

.method public onSubmit(Ljava/lang/String;)V
    .locals 6
    .param p1, "enteredValue"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/coinbase/android/phone/DeletePhoneTask;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->mId:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->isVerified:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/phone/DeletePhoneTask;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/coinbase/android/phone/DeletePhoneTask;->deletePhoneNumber()V

    .line 97
    return-void
.end method
