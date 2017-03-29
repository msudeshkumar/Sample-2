.class public Lcom/coinbase/android/notifications/gcm/GcmMessageHandler;
.super Lcom/google/android/gms/gcm/GcmListenerService;
.source "GcmMessageHandler.java"


# static fields
.field public static final MESSAGE_NOTIFICATION_ID:I = 0x6a491


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmListenerService;-><init>()V

    return-void
.end method

.method private generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v5, "NOTIFICATION_CHART_FRAGMENT"

    invoke-direct {p0, p1, v5}, Lcom/coinbase/android/notifications/gcm/GcmMessageHandler;->generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 45
    .local v2, "chartPendingIntent":Landroid/app/PendingIntent;
    const-string v5, "NOTIFICATION_BUY_FRAGMENT"

    invoke-direct {p0, p1, v5}, Lcom/coinbase/android/notifications/gcm/GcmMessageHandler;->generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 46
    .local v1, "buyPendingIntent":Landroid/app/PendingIntent;
    const-string v5, "NOTIFICATION_SELL_FRAGMENT"

    invoke-direct {p0, p1, v5}, Lcom/coinbase/android/notifications/gcm/GcmMessageHandler;->generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 49
    .local v4, "sellPendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0200f7

    .line 52
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200f8

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 55
    invoke-virtual {v5, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0200bc

    const-string v7, "Buy"

    .line 57
    invoke-virtual {v5, v6, v7, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0200c2

    const-string v7, "Sell"

    .line 58
    invoke-virtual {v5, v6, v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 60
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v5, "notification"

    .line 61
    invoke-virtual {p0, v5}, Lcom/coinbase/android/notifications/gcm/GcmMessageHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 62
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 63
    return-void
.end method

.method private generatePendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const-string v4, "title"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "title":Ljava/lang/String;
    const-string v4, "body"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "message":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/coinbase/android/utils/PriceAlertUtils;->getSavedPriceAlerts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .local v1, "localPriceAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .line 31
    .local v0, "alert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->triggeredOn:J

    .line 33
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->enabled:Z

    .line 34
    invoke-static {p0, v0}, Lcom/coinbase/android/utils/PriceAlertUtils;->savePriceAlert(Landroid/content/Context;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V

    goto :goto_0

    .line 39
    .end local v0    # "alert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_1
    invoke-direct {p0, p0, v3, v2}, Lcom/coinbase/android/notifications/gcm/GcmMessageHandler;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
