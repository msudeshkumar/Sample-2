.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;
.super Ljava/lang/Object;
.source "PriceAlertsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    const-class v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->CURRENT_BASE_CURRENCY:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;
    invoke-static {v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->access$000(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Lcom/coinbase/android/ui/CurrencySelectorLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iget-object v1, v1, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->emptyStateLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    return-void
.end method
