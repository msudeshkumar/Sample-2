.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmountInputWatcher"
.end annotation


# instance fields
.field private final DELAY:J

.field private inputView:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Landroid/widget/EditText;)V
    .locals 2
    .param p2, "inputView"    # Landroid/widget/EditText;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->timer:Ljava/util/Timer;

    .line 364
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->DELAY:J

    .line 368
    iput-object p2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->inputView:Landroid/widget/EditText;

    .line 369
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->inputView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 383
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->inputView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$200(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;

    move-result-object v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$100(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;

    move-result-object v0

    .line 384
    .local v0, "otherView":Landroid/widget/EditText;
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 387
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->timer:Ljava/util/Timer;

    .line 388
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 401
    .end local v0    # "otherView":Landroid/widget/EditText;
    :cond_0
    return-void

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$200(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 373
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 377
    return-void
.end method
