.class Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

.field final synthetic val$options:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;->val$options:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    iget-object v1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$1;->val$options:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->onSubmit(I)V

    .line 106
    return-void
.end method
