.class Lcom/coinbase/android/transfers/DelayedTxSenderService$1;
.super Ljava/lang/Object;
.source "DelayedTxSenderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transfers/DelayedTxSenderService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/DelayedTxSenderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/DelayedTxSenderService;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$1;->this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$1;->this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

    # invokes: Lcom/coinbase/android/transfers/DelayedTxSenderService;->tryToSendAll()V
    invoke-static {v0}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->access$000(Lcom/coinbase/android/transfers/DelayedTxSenderService;)V

    .line 67
    iget-object v0, p0, Lcom/coinbase/android/transfers/DelayedTxSenderService$1;->this$0:Lcom/coinbase/android/transfers/DelayedTxSenderService;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/DelayedTxSenderService;->stopSelf()V

    .line 68
    return-void
.end method
