.class Lcom/coinbase/android/accounts/TransferBitcoinFragment$3;
.super Ljava/lang/Object;
.source "TransferBitcoinFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/TransferBitcoinFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/TransferBitcoinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$3;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/coinbase/android/accounts/TransferBitcoinFragment$3;->this$0:Lcom/coinbase/android/accounts/TransferBitcoinFragment;

    # invokes: Lcom/coinbase/android/accounts/TransferBitcoinFragment;->onCancel()V
    invoke-static {v0}, Lcom/coinbase/android/accounts/TransferBitcoinFragment;->access$300(Lcom/coinbase/android/accounts/TransferBitcoinFragment;)V

    .line 128
    return-void
.end method
