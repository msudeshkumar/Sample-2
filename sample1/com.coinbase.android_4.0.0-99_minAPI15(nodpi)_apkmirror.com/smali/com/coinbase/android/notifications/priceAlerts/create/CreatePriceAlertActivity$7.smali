.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;
.super Ljava/lang/Object;
.source "CreatePriceAlertActivity.java"

# interfaces
.implements Lcom/coinbase/android/notifications/priceAlerts/create/OnScrollListener;


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

.field final synthetic val$singleTickWidth:I


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iput p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->val$singleTickWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    .line 382
    return-void
.end method

.method public onScrollStopped()V
    .locals 4

    .prologue
    .line 386
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget v2, v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    iget v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->val$singleTickWidth:I

    rem-int v0, v2, v3

    .line 387
    .local v0, "remainder":I
    iget v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->val$singleTickWidth:I

    sub-int v1, v2, v0

    .line 388
    .local v1, "snapToPosition":I
    iget v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->val$singleTickWidth:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 389
    neg-int v1, v0

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v2, v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 393
    return-void
.end method
