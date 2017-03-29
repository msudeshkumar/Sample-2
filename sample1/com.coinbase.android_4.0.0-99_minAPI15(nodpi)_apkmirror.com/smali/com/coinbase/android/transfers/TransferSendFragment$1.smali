.class Lcom/coinbase/android/transfers/TransferSendFragment$1;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 304
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 307
    if-eqz p2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->showSuggestionsList()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$000(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$1;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->setContactVisible(Z)V
    invoke-static {v1, v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$100(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V

    .line 311
    return-void

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
