.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;
.super Ljava/lang/Object;
.source "CreatePriceAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareScrollView(DDIDI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 399
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget v0, v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    .line 400
    .local v0, "newPosition":I
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->initialPosition:I
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1300(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)I

    move-result v1

    sub-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v1, v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollListener:Lcom/coinbase/android/notifications/priceAlerts/create/OnScrollListener;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v1, v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollListener:Lcom/coinbase/android/notifications/priceAlerts/create/OnScrollListener;

    invoke-interface {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/OnScrollListener;->onScrollStopped()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget v2, v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    # setter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->initialPosition:I
    invoke-static {v1, v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1302(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;I)I

    .line 407
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v1, v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollerTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1400(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollTaskDelay:I
    invoke-static {v3}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1500(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
