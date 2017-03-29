.class Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$2;
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


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$2;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment$2;->this$0:Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/accounts/AccountSettingsDialogFragment;->onCancel()V

    .line 112
    return-void
.end method
