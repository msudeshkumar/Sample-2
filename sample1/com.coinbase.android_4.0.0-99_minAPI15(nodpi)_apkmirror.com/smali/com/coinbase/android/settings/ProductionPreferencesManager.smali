.class public Lcom/coinbase/android/settings/ProductionPreferencesManager;
.super Ljava/lang/Object;
.source "ProductionPreferencesManager.java"

# interfaces
.implements Lcom/coinbase/android/settings/PreferencesManager;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private mContext:Landroid/app/Application;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginCSRFToken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 69
    iget-object v3, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "login_csrf_token"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 72
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 73
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 74
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "login_csrf_token"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getNativeCurrency()Lorg/joda/money/CurrencyUnit;
    .locals 4

    .prologue
    .line 23
    iget-object v2, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "account_native_currency"

    const-string v3, "USD"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "currencyCode":Ljava/lang/String;
    invoke-static {v0}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    return-object v2
.end method

.method public getPrefsBool(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 83
    iget-object v1, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPrefsInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 98
    iget-object v1, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 99
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPrefsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSavedMerchantNotes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    const-string v0, "account_pos_notes"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/settings/ProductionPreferencesManager;->getPrefsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTippingEnabled()Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "account_enable_tipping"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/settings/ProductionPreferencesManager;->getPrefsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public posUsesBtc()Z
    .locals 2

    .prologue
    .line 49
    const-string v0, "account_pos_btc_amt"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/settings/ProductionPreferencesManager;->getPrefsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putPrefsBool(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Z

    .prologue
    .line 110
    iget-object v1, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public putPrefsString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public saveMerchantNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "account_pos_notes"

    invoke-virtual {p0, v0, p1}, Lcom/coinbase/android/settings/ProductionPreferencesManager;->putPrefsString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    return-void
.end method

.method setNativeCurrency(Lorg/joda/money/CurrencyUnit;)V
    .locals 3
    .param p1, "currency"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "account_native_currency"

    .line 32
    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method

.method public setPosUsesBtc(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 54
    const-string v0, "account_pos_btc_amt"

    invoke-virtual {p0, v0, p1}, Lcom/coinbase/android/settings/ProductionPreferencesManager;->putPrefsBool(Ljava/lang/String;Z)Z

    .line 55
    return-void
.end method

.method public setTippingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 44
    const-string v0, "account_enable_tipping"

    invoke-virtual {p0, v0, p1}, Lcom/coinbase/android/settings/ProductionPreferencesManager;->putPrefsBool(Ljava/lang/String;Z)Z

    .line 45
    return-void
.end method

.method public togglePrefsBool(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 103
    iget-object v2, p0, Lcom/coinbase/android/settings/ProductionPreferencesManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 105
    .local v0, "current":Z
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v5, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    if-nez v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 105
    goto :goto_0

    :cond_1
    move v3, v4

    .line 106
    goto :goto_1
.end method
