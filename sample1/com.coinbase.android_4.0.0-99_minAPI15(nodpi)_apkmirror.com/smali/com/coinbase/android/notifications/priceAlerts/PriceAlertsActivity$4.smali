.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;
.super Ljava/lang/Object;
.source "PriceAlertsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getSpotPrice()V
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
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

.field final synthetic val$currency:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iput-object p2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->val$currency:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iget-object v0, v0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currentPriceTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    const v2, 0x7f070195

    invoke-virtual {v1, v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
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
    .line 170
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/spotPrice/SpotPrice;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iget-object v3, v3, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currentPriceTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    const v5, 0x7f070195

    invoke-virtual {v4, v5}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->val$currency:Ljava/lang/String;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/spotPrice/SpotPrice;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/spotPrice/SpotPrice;->getData()Lcom/coinbase/v2/models/spotPrice/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/spotPrice/Data;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v2

    .line 176
    .local v2, "money":Lorg/joda/money/Money;
    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "amountString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    const v5, 0x7f070194

    invoke-virtual {v4, v5}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "currentPrice":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    iget-object v3, v3, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currentPriceTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
