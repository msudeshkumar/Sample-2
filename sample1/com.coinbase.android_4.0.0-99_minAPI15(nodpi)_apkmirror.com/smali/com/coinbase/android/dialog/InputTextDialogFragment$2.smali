.class Lcom/coinbase/android/dialog/InputTextDialogFragment$2;
.super Ljava/lang/Object;
.source "InputTextDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/dialog/InputTextDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/dialog/InputTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/dialog/InputTextDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/dialog/InputTextDialogFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/coinbase/android/dialog/InputTextDialogFragment$2;->this$0:Lcom/coinbase/android/dialog/InputTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/coinbase/android/dialog/InputTextDialogFragment$2;->this$0:Lcom/coinbase/android/dialog/InputTextDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->onCancel()V

    .line 69
    return-void
.end method
