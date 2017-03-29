.class Lcom/coinbase/android/transfers/TransferSendFragment$2;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 314
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$2;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 319
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$2;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    # invokes: Lcom/coinbase/android/transfers/TransferSendFragment;->showNotes(Z)V
    invoke-static {v0, v1}, Lcom/coinbase/android/transfers/TransferSendFragment;->access$200(Lcom/coinbase/android/transfers/TransferSendFragment;Z)V

    .line 320
    return v1
.end method
