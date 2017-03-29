.class Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;
.super Ljava/lang/Object;
.source "WidgetChooseCurrencyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    .line 45
    # getter for: Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;
    invoke-static {v2}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->access$000(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;)Lcom/coinbase/api/LoginManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getSupportedCurrencies()Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "currencies":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    if-nez v0, :cond_0

    .line 47
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "WidgetChooseCurrencyActivity. Could not load currencies."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "currencies":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    iget-object v2, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->finish()V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 49
    .restart local v0    # "currencies":Ljava/util/List;, "Ljava/util/List<Lorg/joda/money/CurrencyUnit;>;"
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;->this$0:Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;

    new-instance v3, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;

    invoke-direct {v3, p0, v0}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1$1;-><init>(Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity$1;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/coinbase/android/widgets/WidgetChooseCurrencyActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
