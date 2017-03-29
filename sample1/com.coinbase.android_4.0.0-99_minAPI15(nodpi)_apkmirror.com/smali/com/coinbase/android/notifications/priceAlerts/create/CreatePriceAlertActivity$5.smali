.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;
.super Ljava/lang/Object;
.source "CreatePriceAlertActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createPriceAlert()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    const/4 v1, 0x0

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$500(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 8
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 235
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->handleRequestError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$500(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-direct {v0}, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;-><init>()V

    .line 241
    .local v0, "localPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->amount:D

    .line 243
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v4

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$100(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/coinbase/android/utils/PriceAlertUtils;->aboveString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->isAbove:Ljava/lang/String;

    .line 244
    iput-boolean v2, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->enabled:Z

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->createdOn:J

    .line 246
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->triggeredOn:J

    .line 247
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$700(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->currencyUnit:Lorg/joda/money/CurrencyUnit;

    .line 248
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->val$message:Ljava/lang/String;

    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->message:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$800(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v1

    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 251
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-static {v1, v0}, Lcom/coinbase/android/utils/PriceAlertUtils;->savePriceAlert(Landroid/content/Context;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    .line 252
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->bus:Lcom/squareup/otto/Bus;
    invoke-static {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$900(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-virtual {v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->finish()V

    .line 256
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .line 257
    invoke-virtual {v3}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v1, v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createPriceAlertProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v3, v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createNotificationButton:Landroid/widget/Button;

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableButton(Landroid/widget/Button;Z)V
    invoke-static {v1, v3, v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1000(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Landroid/widget/Button;Z)V

    goto/16 :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
