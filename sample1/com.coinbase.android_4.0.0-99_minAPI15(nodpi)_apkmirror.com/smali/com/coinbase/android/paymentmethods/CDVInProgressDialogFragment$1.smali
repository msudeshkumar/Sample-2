.class Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "CDVInProgressDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/CDVInProgressDialogFragment;->onUserConfirm()V

    .line 30
    return-void
.end method
