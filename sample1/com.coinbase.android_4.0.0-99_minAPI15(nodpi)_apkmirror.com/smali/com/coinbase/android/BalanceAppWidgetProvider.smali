.class public Lcom/coinbase/android/BalanceAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BalanceAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 67
    aget v2, p3, v0

    invoke-virtual {p2, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    aget v2, p3, v0

    .line 68
    invoke-virtual {p2, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    const-string v2, "Coinbase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received app widget broadcast for other provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    new-instance v2, Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;

    invoke-direct {v2}, Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;-><init>()V

    aget v3, p3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V

    .line 78
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v1, "service":Landroid/content/Intent;
    sget-object v2, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->EXTRA_UPDATER_CLASS:Ljava/lang/String;

    const-class v3, Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    sget-object v2, Lcom/coinbase/android/widgets/UpdateWidgetBalanceService;->EXTRA_WIDGET_ID:Ljava/lang/String;

    aget v3, p3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 83
    .end local v1    # "service":Landroid/content/Intent;
    :cond_1
    return-void
.end method
