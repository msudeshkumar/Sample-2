.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;
.super Ljava/lang/Object;
.source "PriceAlertsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 104
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    invoke-static {v2}, Lcom/coinbase/android/utils/DeviceUtils;->GCMToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->gcmToken:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->access$102(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    const-string v1, "GCM Token"

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->gcmToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->access$200(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Lcom/coinbase/api/LoginManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .line 113
    invoke-static {v2}, Lcom/coinbase/android/utils/DeviceUtils;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .line 114
    # getter for: Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->gcmToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3$1;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;)V

    .line 112
    invoke-virtual {v1, v2, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->createDeviceToken(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
