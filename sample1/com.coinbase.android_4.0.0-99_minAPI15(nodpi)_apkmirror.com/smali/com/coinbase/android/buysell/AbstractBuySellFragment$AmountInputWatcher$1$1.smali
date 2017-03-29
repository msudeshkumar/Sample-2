.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1$1;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1$1;->this$2:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1$1;->this$2:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;

    iget-object v0, v0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher$1;->this$1:Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    iget-object v0, v0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getQuote()V

    .line 396
    return-void
.end method
