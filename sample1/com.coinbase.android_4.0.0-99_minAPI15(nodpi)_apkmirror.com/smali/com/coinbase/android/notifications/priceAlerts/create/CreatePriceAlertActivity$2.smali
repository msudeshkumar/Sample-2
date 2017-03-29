.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;
.super Ljava/lang/Object;
.source "CreatePriceAlertActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/coinbase/v2/models/spotPrice/SpotPrice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->errorOccurred()V
    invoke-static {v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$000(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    .line 166
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/spotPrice/SpotPrice;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/spotPrice/SpotPrice;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->errorOccurred()V
    invoke-static {v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$000(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/spotPrice/SpotPrice;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/spotPrice/SpotPrice;->getData()Lcom/coinbase/v2/models/spotPrice/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/spotPrice/Data;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    # setter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPriceUSD:D
    invoke-static {v1, v2, v3}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$302(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D

    .line 160
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->checkSpotPriceCompletion()V
    invoke-static {v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$200(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    goto :goto_0
.end method
