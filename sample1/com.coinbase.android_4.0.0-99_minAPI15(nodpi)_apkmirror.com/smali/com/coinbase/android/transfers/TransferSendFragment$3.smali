.class Lcom/coinbase/android/transfers/TransferSendFragment$3;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 324
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 331
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 327
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$302(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;)Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    .line 336
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->updateSuggestions(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$400(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v0, v0, Lcom/coinbase/android/transfers/TransferSendFragment;->mSuggestionsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->showSuggestionsList()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$000(Lcom/coinbase/android/transfers/TransferSendFragment;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$3;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    const/4 v1, 0x0

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->showNotes(Z)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$200(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V

    goto :goto_0
.end method
