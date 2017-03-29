.class public Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;
.super Ljava/lang/Object;
.source "BalanceAppWidgetProvider.java"

# interfaces
.implements Lcom/coinbase/android/widgets/UpdateWidgetBalanceService$WidgetUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/BalanceAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BalanceWidgetUpdater"
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
    .line 51
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v8

    .line 52
    .local v8, "myOptions":Landroid/os/Bundle;
    const-string v0, "appWidgetCategory"

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 53
    .local v6, "category":I
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    const/4 v7, 0x1

    .line 55
    .local v7, "isKeyguard":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 56
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    .line 57
    .local v2, "padding":I
    const v1, 0x7f0d0300

    move-object v0, p4

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 59
    .end local v2    # "padding":I
    :cond_0
    return-void

    .line 53
    .end local v7    # "isKeyguard":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method


# virtual methods
.method public updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "balance"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0300bf

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    .local v1, "views":Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "widget_%d_account_type"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 30
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 29
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/android/utils/PlatformUtils;->hasJellybeanMR1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/coinbase/android/BalanceAppWidgetProvider$BalanceWidgetUpdater;->setKeyguardPadding(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/widget/RemoteViews;)V

    .line 36
    :cond_0
    const-string v2, "wallet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    const v2, 0x7f0d0304

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 40
    :cond_1
    const v2, 0x7f0d0303

    invoke-virtual {v1, v2, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    invoke-static {p1, v1, p3}, Lcom/coinbase/android/widgets/WidgetCommon;->bindButtons(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 44
    const-string v2, "Coinbase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating balance widget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with balance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, p3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 46
    return-void
.end method
