.class public Lcom/crashlytics/android/answers/Answers;
.super Lio/fabric/sdk/android/Kit;
.source "Answers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 372
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/settings/Settings;->getInstance()Lio/fabric/sdk/android/services/settings/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/settings/Settings;->awaitSettingsData()Lio/fabric/sdk/android/services/settings/SettingsData;

    move-result-object v1

    .line 373
    .local v1, "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    if-nez v1, :cond_0

    .line 374
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Failed to retrieve settings"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 391
    .end local v1    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :goto_0
    return-object v2

    .line 378
    .restart local v1    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :cond_0
    iget-object v2, v1, Lio/fabric/sdk/android/services/settings/SettingsData;->featuresData:Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;

    iget-boolean v2, v2, Lio/fabric/sdk/android/services/settings/FeaturesSettingsData;->collectAnalytics:Z

    if-eqz v2, :cond_1

    .line 379
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Analytics collection enabled"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    iget-object v3, v1, Lio/fabric/sdk/android/services/settings/SettingsData;->analyticsSettingsData:Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;Ljava/lang/String;)V

    .line 382
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Analytics collection disabled"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    .line 386
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 388
    .end local v1    # "settingsData":Lio/fabric/sdk/android/services/settings/SettingsData;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->getStringsFileValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string v0, "1.3.6.97"

    return-object v0
.end method

.method public onException(Lio/fabric/sdk/android/services/common/Crash$FatalException;)V
    .locals 2
    .param p1, "exception"    # Lio/fabric/sdk/android/services/common/Crash$FatalException;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/Crash$FatalException;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onCrash(Ljava/lang/String;)V

    .line 335
    :cond_0
    return-void
.end method

.method protected onPreExecute()Z
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 342
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 343
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 344
    .local v11, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v10, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 345
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v1, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "versionCode":Ljava/lang/String;
    iget-object v1, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v5, "0.0"

    .line 351
    .local v5, "versionName":Ljava/lang/String;
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_1

    .line 352
    iget-wide v6, v9, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 358
    .local v6, "installedAt":J
    :goto_1
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getIdManager()Lio/fabric/sdk/android/services/common/IdManager;

    move-result-object v3

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->build(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    .line 360
    iget-object v1, p0, Lcom/crashlytics/android/answers/Answers;->analyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->enable()V

    .line 362
    const/4 v1, 0x1

    .line 366
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "versionCode":Ljava/lang/String;
    .end local v5    # "versionName":Ljava/lang/String;
    .end local v6    # "installedAt":J
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageName":Ljava/lang/String;
    :goto_2
    return v1

    .line 346
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v4    # "versionCode":Ljava/lang/String;
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v5, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 354
    .restart local v5    # "versionName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v10, v11, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 355
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .restart local v6    # "installedAt":J
    goto :goto_1

    .line 363
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "versionCode":Ljava/lang/String;
    .end local v5    # "versionName":Ljava/lang/String;
    .end local v6    # "installedAt":J
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v11    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 364
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v3, "Answers"

    const-string v13, "Error retrieving app properties"

    invoke-interface {v1, v3, v13, v8}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v12

    .line 366
    goto :goto_2
.end method
