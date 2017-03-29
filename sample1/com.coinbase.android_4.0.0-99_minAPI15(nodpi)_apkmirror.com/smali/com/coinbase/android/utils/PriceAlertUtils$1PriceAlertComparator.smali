.class Lcom/coinbase/android/utils/PriceAlertUtils$1PriceAlertComparator;
.super Ljava/lang/Object;
.source "PriceAlertUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/utils/PriceAlertUtils;->getSavedPriceAlerts(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PriceAlertComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)I
    .locals 4
    .param p1, "alert1"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    .param p2, "alert2"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 22
    iget-wide v0, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->createdOn:J

    iget-wide v2, p2, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->createdOn:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->createdOn:J

    iget-wide v2, p2, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->createdOn:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    check-cast p2, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-virtual {p0, p1, p2}, Lcom/coinbase/android/utils/PriceAlertUtils$1PriceAlertComparator;->compare(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)I

    move-result v0

    return v0
.end method
