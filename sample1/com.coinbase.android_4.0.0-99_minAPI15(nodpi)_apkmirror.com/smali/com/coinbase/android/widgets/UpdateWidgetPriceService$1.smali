.class Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;
.super Ljava/lang/Object;
.source "UpdateWidgetPriceService.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->onStartCommand(Landroid/content/Intent;II)I
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
.field final synthetic this$0:Lcom/coinbase/android/widgets/UpdateWidgetPriceService;

.field final synthetic val$manager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$startId:I

.field final synthetic val$updater:Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lcom/coinbase/android/widgets/UpdateWidgetPriceService;Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;Landroid/appwidget/AppWidgetManager;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/widgets/UpdateWidgetPriceService;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetPriceService;

    iput-object p2, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$updater:Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;

    iput-object p3, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iput p4, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$widgetId:I

    iput p5, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetPriceService;

    iget v1, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->stopSelf(I)V

    .line 83
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
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
    .line 69
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/spotPrice/SpotPrice;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/spotPrice/SpotPrice;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/spotPrice/SpotPrice;->getData()Lcom/coinbase/v2/models/spotPrice/Data;

    move-result-object v0

    .line 71
    .local v0, "spotPrice":Lcom/coinbase/v2/models/spotPrice/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/spotPrice/Data;->getAmount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$updater:Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;

    iget-object v2, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetPriceService;

    iget-object v3, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$widgetId:I

    invoke-virtual {v0}, Lcom/coinbase/v2/models/spotPrice/Data;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 77
    .end local v0    # "spotPrice":Lcom/coinbase/v2/models/spotPrice/Data;
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->this$0:Lcom/coinbase/android/widgets/UpdateWidgetPriceService;

    iget v2, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->stopSelf(I)V

    .line 78
    return-void
.end method
