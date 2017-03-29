.class Lcom/coinbase/android/transfers/TransferSendFragment$4;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$4;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iput-object p2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$4;->val$mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$4;->val$mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v1, p3}, Lcom/commonsware/cwac/merge/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    .line 376
    .local v0, "selectedSuggestion":Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$4;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    iget-object v2, v1, Lcom/coinbase/android/transfers/TransferSendFragment;->mRecipientView:Landroid/widget/EditText;

    iget-object v1, v0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$4;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # setter for: Lcom/coinbase/android/transfers/TransferSendFragment;->mSelectedSuggestion:Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;
    invoke-static {v1, v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$302(Lcom/coinbase/android/transfers/TransferSendFragment;Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;)Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;

    .line 378
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$4;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    const/4 v2, 0x1

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->showNotes(Z)V
    invoke-static {v1, v2}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$200(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V

    .line 379
    return-void

    .line 376
    :cond_0
    iget-object v1, v0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->email:Ljava/lang/String;

    goto :goto_0
.end method
