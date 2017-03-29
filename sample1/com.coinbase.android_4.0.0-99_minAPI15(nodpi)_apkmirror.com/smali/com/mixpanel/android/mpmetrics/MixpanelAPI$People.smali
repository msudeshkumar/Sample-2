.class public interface abstract Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "People"
.end annotation


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract clearPushRegistrationId()V
.end method

.method public abstract setPushRegistrationId(Ljava/lang/String;)V
.end method

.method public abstract showNotificationIfAvailable(Landroid/app/Activity;)V
.end method

.method public abstract showSurveyIfAvailable(Landroid/app/Activity;)V
.end method

.method public abstract withIdentity(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
.end method
