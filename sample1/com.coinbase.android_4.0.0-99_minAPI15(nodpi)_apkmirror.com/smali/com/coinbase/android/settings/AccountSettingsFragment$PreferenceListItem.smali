.class abstract Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PreferenceListItem"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPrefs:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p2}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 103
    iput-object p2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->mPrefs:Landroid/content/SharedPreferences;

    .line 105
    return-void
.end method


# virtual methods
.method protected getCachedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->getCachedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCachedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCachedValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 119
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayValue()Ljava/lang/String;
.end method

.method public isSwitchOn()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public showSwitch()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method
