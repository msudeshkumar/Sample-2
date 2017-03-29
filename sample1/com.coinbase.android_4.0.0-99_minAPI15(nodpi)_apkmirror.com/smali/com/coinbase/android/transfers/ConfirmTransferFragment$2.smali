.class Lcom/coinbase/android/transfers/ConfirmTransferFragment$2;
.super Ljava/lang/Object;
.source "ConfirmTransferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/ConfirmTransferFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/ConfirmTransferFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/ConfirmTransferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/ConfirmTransferFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment$2;->this$0:Lcom/coinbase/android/transfers/ConfirmTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/android/transfers/ConfirmTransferFragment$2;->this$0:Lcom/coinbase/android/transfers/ConfirmTransferFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/ConfirmTransferFragment;->onUserConfirm()V

    .line 65
    return-void
.end method
