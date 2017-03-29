.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;
.super Ljava/util/TimerTask;
.source "AbstractBuySellFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;->this$1:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;->this$1:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    iget-object v0, v0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;->this$1:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    iget-object v0, v0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1$1;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    :cond_0
    return-void
.end method
