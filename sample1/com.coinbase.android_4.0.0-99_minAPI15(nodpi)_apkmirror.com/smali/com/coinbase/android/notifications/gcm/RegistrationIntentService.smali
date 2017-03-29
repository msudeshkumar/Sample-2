.class public Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;
.super Lroboguice/service/RoboIntentService;
.source "RegistrationIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RegIntentService"


# instance fields
.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "RegIntentService"

    invoke-direct {p0, v0}, Lroboguice/service/RoboIntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private sendRegistrationToServer(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "sentTokenToServer"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    iget-object v1, p0, Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    .line 55
    invoke-static {p0}, Lcom/coinbase/android/utils/DeviceUtils;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/notifications/gcm/RegistrationIntentService$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/notifications/gcm/RegistrationIntentService$1;-><init>(Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;)V

    .line 54
    invoke-virtual {v1, v2, p1, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createDeviceToken(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 37
    .local v2, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/coinbase/android/utils/DeviceUtils;->GCMToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "gcmToken"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    invoke-direct {p0, v2}, Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;->sendRegistrationToServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "sentTokenToServer"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
