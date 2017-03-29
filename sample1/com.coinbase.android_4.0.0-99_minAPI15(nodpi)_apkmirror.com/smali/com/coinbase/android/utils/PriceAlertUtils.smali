.class public Lcom/coinbase/android/utils/PriceAlertUtils;
.super Ljava/lang/Object;
.source "PriceAlertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aboveString(Z)Ljava/lang/String;
    .locals 1
    .param p0, "above"    # Z

    .prologue
    .line 86
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static deletePriceAlert(Landroid/content/Context;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localPriceAlert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/coinbase/android/utils/PriceAlertUtils;->getSavedPriceAlerts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    .local v4, "localPriceAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .line 70
    .local v0, "aLocalPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    iget-object v7, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    iget-object v8, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 71
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    .end local v0    # "aLocalPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 77
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 80
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "json":Ljava/lang/String;
    const-string v6, "NOTIFICATION_SET"

    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public static getSavedPriceAlerts(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 28
    .local v4, "prefs":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v3, "localPriceAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v5, "NOTIFICATION_SET"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "json":Ljava/lang/String;
    const-class v5, [Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    invoke-virtual {v0, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .line 32
    .local v2, "localPriceAlertArray":[Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    if-eqz v2, :cond_0

    .line 33
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_0
    new-instance v5, Lcom/coinbase/android/utils/PriceAlertUtils$1PriceAlertComparator;

    invoke-direct {v5}, Lcom/coinbase/android/utils/PriceAlertUtils$1PriceAlertComparator;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    return-object v3
.end method

.method public static savePriceAlert(Landroid/content/Context;Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "localPriceAlert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 42
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 44
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/coinbase/android/utils/PriceAlertUtils;->getSavedPriceAlerts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 46
    .local v6, "localPriceAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    const/4 v4, -0x1

    .line 47
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 48
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .line 49
    .local v0, "aLocalPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    iget-object v8, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    iget-object v9, p1, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    move v4, v3

    .line 55
    .end local v0    # "aLocalPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_0
    const/4 v8, -0x1

    if-gt v4, v8, :cond_2

    .line 56
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 61
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "json":Ljava/lang/String;
    const-string v8, "NOTIFICATION_SET"

    invoke-interface {v1, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void

    .line 47
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "json":Ljava/lang/String;
    .restart local v0    # "aLocalPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "aLocalPriceAlert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_2
    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
