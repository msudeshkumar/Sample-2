.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$1;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment;->checkAccountSetupStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$1;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$1;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$1;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # invokes: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateOverlay()V
    invoke-static {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$000(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    .line 125
    :cond_0
    return-void
.end method
