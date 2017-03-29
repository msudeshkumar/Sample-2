.class public Lcom/coinbase/android/CoinbaseApplication;
.super Landroid/app/Application;
.source "CoinbaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/CoinbaseApplication$MyLifecycleHandler;
    }
.end annotation


# static fields
.field private static paused:I

.field private static resumed:I

.field private static started:I

.field private static stopped:I


# instance fields
.field private mMainActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/android/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/CoinbaseApplication;->mMainActivities:Ljava/util/List;

    return-void
.end method

.method static synthetic access$004()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/coinbase/android/CoinbaseApplication;->resumed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coinbase/android/CoinbaseApplication;->resumed:I

    return v0
.end method

.method static synthetic access$104()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/coinbase/android/CoinbaseApplication;->paused:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coinbase/android/CoinbaseApplication;->paused:I

    return v0
.end method

.method static synthetic access$204()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/coinbase/android/CoinbaseApplication;->started:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coinbase/android/CoinbaseApplication;->started:I

    return v0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/coinbase/android/CoinbaseApplication;->stopped:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coinbase/android/CoinbaseApplication;->stopped:I

    return v0
.end method

.method public static isApplicationInForeground()Z
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/coinbase/android/CoinbaseApplication;->resumed:I

    sget v1, Lcom/coinbase/android/CoinbaseApplication;->paused:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isApplicationVisible()Z
    .locals 2

    .prologue
    .line 31
    sget v0, Lcom/coinbase/android/CoinbaseApplication;->started:I

    sget v1, Lcom/coinbase/android/CoinbaseApplication;->stopped:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    const-string v0, "34183b03a3e1f0b74ee6aa8a6150e90125de2d6c1ee4ff7880c2b7e6e98b11f5"

    const-string v1, "2c481f46f9dc046b4b9a67e630041b9906c023d139fbc77a47053328b9d3122d"

    invoke-static {p0, v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coinbase/android/CoinbaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/utils/MixpanelTracking;->initializeMixpanel(Landroid/content/Context;)V

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 49
    invoke-static {}, Lcom/coinbase/android/utils/KochavaTracking;->getInstance()Lcom/coinbase/android/utils/KochavaTracking;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coinbase/android/utils/KochavaTracking;->initializeKochava(Landroid/content/Context;)Lcom/kochava/android/tracker/Feature;

    .line 51
    invoke-static {p0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->perform(Landroid/app/Application;)V

    .line 52
    const-string v0, "account_app_usage"

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/PreferenceUtils;->incrementPrefsInt(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    invoke-static {p0, v2}, Lcom/coinbase/android/pin/PINManager;->setPinEntered(Landroid/content/Context;Z)V

    .line 56
    new-instance v0, Lcom/coinbase/android/CoinbaseApplication$MyLifecycleHandler;

    invoke-direct {v0, p0}, Lcom/coinbase/android/CoinbaseApplication$MyLifecycleHandler;-><init>(Lcom/coinbase/android/CoinbaseApplication;)V

    invoke-virtual {p0, v0}, Lcom/coinbase/android/CoinbaseApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 57
    return-void
.end method

.method public removeMainActivity(Lcom/coinbase/android/MainActivity;)V
    .locals 1
    .param p1, "mainActivity"    # Lcom/coinbase/android/MainActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseApplication;->mMainActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
