.class public Lcom/google/android/gms/appinvite/AppInviteReferral;
.super Ljava/lang/Object;


# direct methods
.method public static getDeepLink(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "referralIntent"    # Landroid/content/Intent;

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "com.google.android.gms.appinvite.REFERRAL_BUNDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.appinvite.DEEP_LINK"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReferral(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "referralIntent"    # Landroid/content/Intent;

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "com.google.android.gms.appinvite.REFERRAL_BUNDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
