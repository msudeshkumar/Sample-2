.class Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneNumberItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;->mContext:Landroid/content/Context;

    const-class v2, Lcom/coinbase/android/phone/PhoneNumberActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 289
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Manage phone numbers settings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 290
    return-void
.end method
