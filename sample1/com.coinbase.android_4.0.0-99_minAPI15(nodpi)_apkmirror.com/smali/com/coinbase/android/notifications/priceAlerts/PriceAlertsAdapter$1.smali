.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;
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
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$viewHolder:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    iput-object p3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$viewHolder:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    iget-object v1, v1, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->notificationSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 111
    .local v0, "isNotificationEnabled":Z
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->triggeredOn:J

    .line 114
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->createPriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    invoke-static {v1, v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->access$200(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$viewHolder:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->enableNotification(Z)V
    invoke-static {v1, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;->access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$ViewHolder;Z)V

    .line 120
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    iput-boolean v0, v1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->enabled:Z

    .line 121
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/PriceAlertUtils;->savePriceAlert(Landroid/content/Context;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    .line 122
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$1;->val$localPriceAlert:Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->deletePriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    invoke-static {v1, v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->access$300(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    goto :goto_0
.end method
