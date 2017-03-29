.class Lcom/coinbase/android/transfers/TransferSendFragment$9;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;->initiateReceive()V
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
    .line 822
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$9;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$9;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferSendFragment$9;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 827
    :cond_0
    return-void
.end method
