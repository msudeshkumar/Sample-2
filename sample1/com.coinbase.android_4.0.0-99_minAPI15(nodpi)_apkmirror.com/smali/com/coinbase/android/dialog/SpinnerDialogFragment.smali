.class public abstract Lcom/coinbase/android/dialog/SpinnerDialogFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "SpinnerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lroboguice/fragment/RoboDialogFragment;"
    }
.end annotation


# static fields
.field public static final SELECTED_INDEX:Ljava/lang/String; = "SpinnerDialogFragment_Selected_Index"

.field public static final TITLE:Ljava/lang/String; = "SpinnerDialogFragment_Title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment<TT;>;"
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOptionDisplayText(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getOptions()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment<TT;>;"
    return-void
.end method

.method public abstract onChosenValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    .local p0, "this":Lcom/coinbase/android/dialog/SpinnerDialogFragment;, "Lcom/coinbase/android/dialog/SpinnerDialogFragment<TT;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->getOptions()[Ljava/lang/Object;

    move-result-object v5

    .line 23
    .local v5, "options":[Ljava/lang/Object;, "[TT;"
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/String;

    .line 24
    .local v3, "displayTexts":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 25
    aget-object v6, v5, v4

    invoke-virtual {p0, v6}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->getOptionDisplayText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    .line 24
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 30
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 31
    .local v2, "defaultSelection":I
    if-eqz v1, :cond_1

    .line 32
    const-string v6, "SpinnerDialogFragment_Title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    const-string v6, "SpinnerDialogFragment_Selected_Index"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    :cond_1
    new-instance v6, Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment$1;-><init>(Lcom/coinbase/android/dialog/SpinnerDialogFragment;)V

    invoke-virtual {v0, v3, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    const v6, 0x7f07019f

    new-instance v7, Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;

    invoke-direct {v7, p0, v5}, Lcom/coinbase/android/dialog/SpinnerDialogFragment$2;-><init>(Lcom/coinbase/android/dialog/SpinnerDialogFragment;[Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    const v6, 0x7f0700b4

    new-instance v7, Lcom/coinbase/android/dialog/SpinnerDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment$3;-><init>(Lcom/coinbase/android/dialog/SpinnerDialogFragment;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method
