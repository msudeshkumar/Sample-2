.class public Lcom/coinbase/android/googleNow/GoogleNowService;
.super Landroid/app/IntentService;
.source "GoogleNowService.java"


# instance fields
.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "GoogleNowService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private handleGoogleNowNotEnabled(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "authCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 72
    .local v2, "completed":Z
    :goto_0
    if-nez v2, :cond_1

    .line 74
    :try_start_0
    const-string v6, "242335961153-ili65kms0rs20m7a68jklh5ka7733plc.apps.googleusercontent.com"

    invoke-static {p1, v6}, Lcom/google/android/now/NowAuthService;->getAuthCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/now/NowAuthService$UnauthorizedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 75
    const/4 v2, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 78
    .local v1, "authException":Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 80
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://accounts.google.com/o/oauth2/revoke?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    :catch_1
    move-exception v5

    .line 99
    .end local v1    # "authException":Lcom/google/android/now/NowAuthService$HaveTokenAlreadyException;
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_0
    :goto_1
    return-void

    .line 86
    :catch_2
    move-exception v3

    .line 87
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 92
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v0, :cond_0

    .line 94
    :try_start_2
    iget-object v6, p0, Lcom/coinbase/android/googleNow/GoogleNowService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->enableGoogleNow(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 95
    :catch_3
    move-exception v3

    .line 96
    .restart local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 84
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method private handleNotSignedIn(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/coinbase/android/googleNow/GoogleNowService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, "notifyIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 63
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 64
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "workIntent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/coinbase/android/googleNow/GoogleNowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0}, Lroboguice/RoboGuice;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/coinbase/android/googleNow/GoogleNowService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    invoke-direct {p0, v0}, Lcom/coinbase/android/googleNow/GoogleNowService;->handleNotSignedIn(Landroid/content/Context;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/coinbase/android/googleNow/GoogleNowService;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->isGoogleNowEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/coinbase/android/googleNow/GoogleNowService;->handleGoogleNowNotEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
