.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;
.super Ljava/lang/Object;
.source "CreatePriceAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareItems(IDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

.field final synthetic val$startPosition:D


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iput-wide p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;->val$startPosition:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    iget-wide v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;->val$startPosition:D

    double-to-int v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 505
    return-void
.end method
