.class Lcom/coinbase/android/dialog/InputTextDialogFragment$1;
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

.field final synthetic val$userInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/coinbase/android/dialog/InputTextDialogFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/dialog/InputTextDialogFragment;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/coinbase/android/dialog/InputTextDialogFragment$1;->this$0:Lcom/coinbase/android/dialog/InputTextDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/dialog/InputTextDialogFragment$1;->val$userInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/coinbase/android/dialog/InputTextDialogFragment$1;->this$0:Lcom/coinbase/android/dialog/InputTextDialogFragment;

    iget-object v1, p0, Lcom/coinbase/android/dialog/InputTextDialogFragment$1;->val$userInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->onSubmit(Ljava/lang/String;)V

    .line 63
    return-void
.end method
