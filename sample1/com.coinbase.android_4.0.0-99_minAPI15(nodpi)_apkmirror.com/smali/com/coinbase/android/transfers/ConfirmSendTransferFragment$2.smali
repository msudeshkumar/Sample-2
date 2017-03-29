.class Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$2;
.super Ljava/lang/Object;
.source "ConfirmSendTransferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$2;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment$2;->this$0:Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/ConfirmSendTransferFragment;->onUserConfirm()V

    .line 151
    return-void
.end method
