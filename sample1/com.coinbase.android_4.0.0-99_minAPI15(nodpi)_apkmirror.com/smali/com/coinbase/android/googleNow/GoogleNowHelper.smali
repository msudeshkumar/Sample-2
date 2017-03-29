.class public Lcom/coinbase/android/googleNow/GoogleNowHelper;
.super Ljava/lang/Object;
.source "GoogleNowHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlarm(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 24
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/coinbase/android/googleNow/GoogleNowService;

    invoke-direct {v8, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .local v8, "notifyIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    invoke-static {p0, v1, v8, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 31
    .local v6, "pi":Landroid/app/PendingIntent;
    const/high16 v2, 0x20000000

    invoke-static {p0, v1, v8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v7, 0x1

    .line 32
    .local v7, "isAlarmSet":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 33
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 34
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    .line 37
    invoke-static {p0, v1, v8, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 41
    :cond_0
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 42
    return-void

    .end local v7    # "isAlarmSet":Z
    :cond_1
    move v7, v1

    .line 31
    goto :goto_0
.end method

.method public static parseDeeplinkingInformation(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "coinbase-now-link"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "path":Ljava/lang/String;
    const-string v6, "\\/accounts\\/.*\\/transactions\\/.*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "transactionID":Ljava/lang/String;
    const-string v6, "accounts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "accounts"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const-string v7, "transactions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "accountID":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/coinbase/android/transactions/TransactionDetailsActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v3, "i":Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v6, "accountId"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .end local v1    # "accountID":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "transactionID":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 64
    .restart local v4    # "path":Ljava/lang/String;
    :cond_0
    const-string v6, "\\/accounts\\/.*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    const-string v6, "accounts"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "accounts"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "accountID":Ljava/lang/String;
    const-string v6, "primary"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    new-instance v0, Lcom/coinbase/v2/models/account/Data;

    invoke-direct {v0}, Lcom/coinbase/v2/models/account/Data;-><init>()V

    .line 71
    .local v0, "a":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0, v1}, Lcom/coinbase/v2/models/account/Data;->setId(Ljava/lang/String;)V

    .line 73
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 74
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/coinbase/android/MainActivity;

    invoke-direct {v3, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .restart local v3    # "i":Landroid/content/Intent;
    const/high16 v6, 0x4000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    const-string v6, "drawerIndex"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v6, "data"

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 84
    .end local v0    # "a":Lcom/coinbase/v2/models/account/Data;
    .end local v1    # "accountID":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
