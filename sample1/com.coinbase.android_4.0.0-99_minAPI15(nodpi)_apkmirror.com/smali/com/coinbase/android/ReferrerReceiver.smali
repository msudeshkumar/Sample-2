.class public Lcom/coinbase/android/ReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReferrerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.android.vending.INSTALL_REFERRER"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const-string v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "referrer":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 19
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - Install Source"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Property - Source"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    .end local v1    # "referrer":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2}, Lcom/coinbase/android/googleappinvite/GoogleAppInviteUtils;->setReferrerId(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    return-void
.end method
