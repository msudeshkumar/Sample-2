.class public abstract Lcom/coinbase/android/dialog/InputTextDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "InputTextDialogFragment.java"


# static fields
.field public static final VALUE:Ljava/lang/String; = "InputTextDialogFragment_Input"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 26
    .local v2, "li":Landroid/view/LayoutInflater;
    const v6, 0x7f030088

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 28
    .local v3, "textDialogView":Landroid/view/View;
    const v6, 0x7f0d0075

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 29
    .local v4, "title":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 30
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    :goto_0
    const v6, 0x7f0d0256

    .line 38
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 40
    .local v5, "userInput":Landroid/widget/EditText;
    const v6, 0x7f0d0255

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 41
    .local v1, "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 42
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    :goto_1
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getInputType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "InputTextDialogFragment_Input"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    const v6, 0x7f07019f

    new-instance v7, Lcom/coinbase/android/dialog/InputTextDialogFragment$1;

    invoke-direct {v7, p0, v5}, Lcom/coinbase/android/dialog/InputTextDialogFragment$1;-><init>(Lcom/coinbase/android/dialog/InputTextDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    const v6, 0x7f0700b4

    new-instance v7, Lcom/coinbase/android/dialog/InputTextDialogFragment$2;

    invoke-direct {v7, p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment$2;-><init>(Lcom/coinbase/android/dialog/InputTextDialogFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    .line 33
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "label":Landroid/widget/TextView;
    .end local v5    # "userInput":Landroid/widget/EditText;
    :cond_1
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    .restart local v1    # "label":Landroid/widget/TextView;
    .restart local v5    # "userInput":Landroid/widget/EditText;
    :cond_2
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public abstract onSubmit(Ljava/lang/String;)V
.end method
