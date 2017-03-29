.class public Lcom/coinbase/android/PriceAppWidgetProvider$PriceWidgetUpdater;
.super Ljava/lang/Object;
.source "PriceAppWidgetProvider.java"

# interfaces
.implements Lcom/coinbase/android/widgets/UpdateWidgetPriceService$WidgetUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/PriceAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriceWidgetUpdater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setKeyguardPadding(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "views"    # Landroid/widget/RemoteViews;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v8

    .line 59
    .local v8, "myOptions":Landroid/os/Bundle;
    const-string v0, "appWidgetCategory"

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 60
    .local v6, "category":I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    const/4 v7, 0x1

    .line 62
    .local v7, "isKeyguard":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 63
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 64
    .local v2, "padding":I
    const v1, 0x7f0d0300

    move-object v0, p4

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 66
    .end local v2    # "padding":I
    :cond_0
    return-void

    .line 60
    .end local v7    # "isKeyguard":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "price"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300c0

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 28
    .local v5, "views":Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "widget_%d_currency"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "USD"

    .line 28
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "currency":Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasJellybeanMR1()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 32
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/coinbase/android/PriceAppWidgetProvider$PriceWidgetUpdater;->setKeyguardPadding(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    .line 35
    :cond_0
    const v6, 0x7f0d0307

    invoke-virtual {v5, v6, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 36
    const v6, 0x7f0d0308

    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/coinbase/android/MainActivity;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v1, "mainMenu":Landroid/content/Intent;
    const-string v6, "com.siriusapplications.coinbase.MainActivity.ACTION_TRANSACTIONS"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 42
    .local v2, "pMainMenu":Landroid/app/PendingIntent;
    const v6, 0x7f0d0302

    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "refresh":Landroid/content/Intent;
    const-string v6, "appWidgetIds"

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p3, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const/4 v6, 0x0

    invoke-static {p1, p3, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 49
    .local v3, "pRefresh":Landroid/app/PendingIntent;
    const v6, 0x7f0d0305

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 51
    const-string v6, "Coinbase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating price widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with price "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2, p3, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 53
    return-void
.end method
