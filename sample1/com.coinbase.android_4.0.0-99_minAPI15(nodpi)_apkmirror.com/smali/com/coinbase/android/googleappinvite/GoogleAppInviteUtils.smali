.class public Lcom/coinbase/android/googleappinvite/GoogleAppInviteUtils;
.super Ljava/lang/Object;
.source "GoogleAppInviteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setReferrerId(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 20
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/google/android/gms/appinvite/AppInviteReferral;->hasReferral(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/appinvite/AppInviteReferral;->getDeepLink(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "deepLink":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 25
    const v3, 0x7f070085

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "referrerId":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "referrer_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 29
    .end local v0    # "deepLink":Ljava/lang/String;
    .end local v2    # "referrerId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static supportedGooglePlayServices(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 34
    .local v0, "gIstance":Lcom/google/android/gms/common/GoogleApiAvailability;
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 37
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
