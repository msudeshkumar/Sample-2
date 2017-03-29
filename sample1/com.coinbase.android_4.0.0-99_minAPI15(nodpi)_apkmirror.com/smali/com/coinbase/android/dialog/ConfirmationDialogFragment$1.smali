.class Lcom/coinbase/android/dialog/ConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "ConfirmationDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/dialog/ConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/dialog/ConfirmationDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/dialog/ConfirmationDialogFragment;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/coinbase/android/dialog/ConfirmationDialogFragment$1;->this$0:Lcom/coinbase/android/dialog/ConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/dialog/ConfirmationDialogFragment$1;->this$0:Lcom/coinbase/android/dialog/ConfirmationDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/dialog/ConfirmationDialogFragment;->onUserCancel()V

    .line 43
    return-void
.end method
