.class public Lcom/coinbase/android/widgets/UpdateWidgetPriceService;
.super Lroboguice/service/RoboService;
.source "UpdateWidgetPriceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;
    }
.end annotation


# static fields
.field public static EXTRA_UPDATER_CLASS:Ljava/lang/String;

.field public static EXTRA_WIDGET_ID:Ljava/lang/String;


# instance fields
.field private mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "widget_id"

    sput-object v0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->EXTRA_WIDGET_ID:Ljava/lang/String;

    .line 32
    const-string v0, "updater_class"

    sput-object v0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->EXTRA_UPDATER_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lroboguice/service/RoboService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    .line 44
    :cond_0
    sget-object v0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->EXTRA_WIDGET_ID:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 45
    .local v4, "widgetId":I
    sget-object v0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->EXTRA_UPDATER_CLASS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    .line 47
    .local v10, "updaterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const v0, 0x7f0702e2

    invoke-virtual {p0, v0}, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "widget_%d_currency"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "USD"

    .line 53
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "currencyCode":Ljava/lang/String;
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->lastSelectedCurrencyType(Landroid/content/Context;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "baseCurrency":Ljava/lang/String;
    invoke-static {v8}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v7

    .line 61
    .local v7, "currency":Lorg/joda/money/CurrencyUnit;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 62
    .local v3, "manager":Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;

    .line 63
    .local v2, "updater":Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;
    const/4 v0, 0x0

    invoke-interface {v2, p0, v3, v4, v0}, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v11

    invoke-virtual {v7}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v0, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;

    move-object v1, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/widgets/UpdateWidgetPriceService$1;-><init>(Lcom/coinbase/android/widgets/UpdateWidgetPriceService;Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;Landroid/appwidget/AppWidgetManager;II)V

    invoke-virtual {v11, v6, v12, v13, v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2    # "updater":Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;
    .end local v3    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v6    # "baseCurrency":Ljava/lang/String;
    .end local v7    # "currency":Lorg/joda/money/CurrencyUnit;
    .end local v8    # "currencyCode":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x3

    goto :goto_0

    .line 85
    :catch_0
    move-exception v9

    .line 86
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
