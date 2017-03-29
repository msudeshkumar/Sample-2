.class public Lcom/coinbase/android/widgets/WidgetCommon;
.super Ljava/lang/Object;
.source "WidgetCommon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindButtons(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "appWidgetId"    # I

    .prologue
    const/4 v10, 0x0

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/coinbase/android/MainActivity;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .local v0, "mainMenu":Landroid/content/Intent;
    const-string v8, "com.siriusapplications.coinbase.MainActivity.ACTION_TRANSACTIONS"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 20
    .local v1, "pMainMenu":Landroid/app/PendingIntent;
    const v8, 0x7f0d0302

    invoke-virtual {p1, v8, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 23
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/coinbase/android/MainActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v6, "scan":Landroid/content/Intent;
    const-string v8, "com.siriusapplications.coinbase.MainActivity.ACTION_SCAN"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-static {p0, v10, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 26
    .local v3, "pScan":Landroid/app/PendingIntent;
    const v8, 0x7f0d0304

    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 29
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v5, "refresh":Landroid/content/Intent;
    const-string v8, "appWidgetIds"

    const/4 v9, 0x1

    new-array v9, v9, [I

    aput p2, v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-static {p0, p2, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 33
    .local v2, "pRefresh":Landroid/app/PendingIntent;
    const v8, 0x7f0d0305

    invoke-virtual {p1, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 36
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/coinbase/android/MainActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v7, "transfer":Landroid/content/Intent;
    const-string v8, "com.siriusapplications.coinbase.MainActivity.ACTION_TRANSFER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 39
    .local v4, "pTransfer":Landroid/app/PendingIntent;
    const v8, 0x7f0d0306

    invoke-virtual {p1, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 40
    return-void
.end method
