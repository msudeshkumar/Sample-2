.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;
.super Ljava/lang/Object;
.source "PriceAlertsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

.field final synthetic val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

.field final synthetic val$viewHolder:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    iput-object p3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->val$viewHolder:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->deletePriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->access$300(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    .line 130
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/PriceAlertUtils;->deletePriceAlert(Landroid/content/Context;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    .line 131
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->val$viewHolder:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->swipeLayout:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    .line 132
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->bus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->access$400(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;)Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$2;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
