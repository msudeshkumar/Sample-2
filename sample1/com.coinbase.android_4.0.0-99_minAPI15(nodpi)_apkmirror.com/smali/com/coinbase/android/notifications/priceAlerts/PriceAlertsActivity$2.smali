.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$2;
.super Ljava/lang/Object;
.source "PriceAlertsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 92
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iget-object v0, v0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->closeAllItems()V

    .line 101
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 96
    return-void
.end method
