.class public Lcom/coinbase/android/notifications/gcm/InstanceIDService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "InstanceIDService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coinbase/android/notifications/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/coinbase/android/notifications/gcm/InstanceIDService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 12
    return-void
.end method
