.class Lcom/coinbase/android/transfers/TransferSendFragment$7;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$7;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$7;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$7;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    const/4 v1, 0x0

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->setContactVisible(Z)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$100(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V

    .line 410
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$7;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 411
    return-void
.end method
