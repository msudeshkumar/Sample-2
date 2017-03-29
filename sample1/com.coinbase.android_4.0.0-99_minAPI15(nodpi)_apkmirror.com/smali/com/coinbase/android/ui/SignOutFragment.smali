.class public Lcom/coinbase/android/ui/SignOutFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "SignOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/ui/SignOutFragment;)Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/ui/SignOutFragment;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/android/ui/SignOutFragment;->mListener:Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 25
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SignOutFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SignOutFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    iput-object v0, p0, Lcom/coinbase/android/ui/SignOutFragment;->mListener:Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SignOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SignOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    iput-object v0, p0, Lcom/coinbase/android/ui/SignOutFragment;->mListener:Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parent fragment or activity must implement SignOutListener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SignOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 44
    const v1, 0x7f07019f

    new-instance v2, Lcom/coinbase/android/ui/SignOutFragment$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/ui/SignOutFragment$1;-><init>(Lcom/coinbase/android/ui/SignOutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v1, 0x7f0700b4

    new-instance v2, Lcom/coinbase/android/ui/SignOutFragment$2;

    invoke-direct {v2, p0}, Lcom/coinbase/android/ui/SignOutFragment$2;-><init>(Lcom/coinbase/android/ui/SignOutFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
