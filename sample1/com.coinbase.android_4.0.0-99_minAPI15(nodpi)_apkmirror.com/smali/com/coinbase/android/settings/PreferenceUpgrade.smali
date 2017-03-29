.class public Lcom/coinbase/android/settings/PreferenceUpgrade;
.super Ljava/lang/Object;
.source "PreferenceUpgrade.java"


# static fields
.field public static final KEY_ACCOUNT_ACCESS_TOKEN:Ljava/lang/String; = "account_%d_access_token"

.field public static final KEY_ACCOUNT_APP_USAGE:Ljava/lang/String; = "account_%1$d_app_usage"

.field public static final KEY_ACCOUNT_ENABLE_TIPPING:Ljava/lang/String; = "account_%1$d_enable_tipping"

.field public static final KEY_ACCOUNT_FIRST_LAUNCH:Ljava/lang/String; = "account_%1$d_first_launch"

.field public static final KEY_ACCOUNT_FULL_NAME:Ljava/lang/String; = "account_%d_full_name"

.field public static final KEY_ACCOUNT_ID:Ljava/lang/String; = "account_%d_id"

.field public static final KEY_ACCOUNT_LIMIT:Ljava/lang/String; = "account_%1$d_limit_%2$s"

.field public static final KEY_ACCOUNT_LIMIT_CURRENCY:Ljava/lang/String; = "account_%1$d_limit_currency_%2$s"

.field public static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "account_%d_name"

.field public static final KEY_ACCOUNT_NATIVE_CURRENCY:Ljava/lang/String; = "account_%d_native_currency"

.field public static final KEY_ACCOUNT_PIN:Ljava/lang/String; = "account_%d_pin"

.field public static final KEY_ACCOUNT_PIN_VIEW_ALLOWED:Ljava/lang/String; = "account_%d_pin_view_allowed"

.field public static final KEY_ACCOUNT_POS_BTC_AMT:Ljava/lang/String; = "account_%1$d_pos_btc_amt"

.field public static final KEY_ACCOUNT_POS_NOTES:Ljava/lang/String; = "account_%1$d_pos_notes"

.field public static final KEY_ACCOUNT_RATE_NOTICE_STATE:Ljava/lang/String; = "account_%1$d_rate_notice_state"

.field public static final KEY_ACCOUNT_REFRESH_TOKEN:Ljava/lang/String; = "account_%d_refresh_token"

.field public static final KEY_ACCOUNT_SHOW_BALANCE:Ljava/lang/String; = "account_%1$d_show_balance"

.field public static final KEY_ACCOUNT_TIME_ZONE:Ljava/lang/String; = "account_%d_time_zone"

.field public static final KEY_ACCOUNT_TOKEN_EXPIRES_AT:Ljava/lang/String; = "account_%d_token_expires_at"

.field public static final KEY_ACCOUNT_TRANSFER_CURRENCY_BTC:Ljava/lang/String; = "account_%1$d_transfer_currency_btc"

.field public static final KEY_ACCOUNT_VALID:Ljava/lang/String; = "account_%d_valid"

.field public static final KEY_ACCOUNT_VALID_DESC:Ljava/lang/String; = "account_%d_valid_desc"

.field public static final KEY_ACTIVE_ACCOUNT:Ljava/lang/String; = "active_account"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static perform(Landroid/app/Application;)V
    .locals 19
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    .line 49
    const-string v15, "PreferenceUpgrade"

    const-string v16, "In perform"

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 52
    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 54
    .local v5, "e":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradePINPreferences(Landroid/content/SharedPreferences;Landroid/app/Application;)V

    .line 56
    const-string v15, "active_account"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, "activeAccountIndex":I
    const/4 v15, -0x1

    if-le v1, v15, :cond_5

    .line 59
    :try_start_0
    const-string v15, "account_%d_valid"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_0

    .line 60
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "Account invalid, not upgrading"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :catch_0
    move-exception v6

    .line 151
    .local v6, "ex":Ljava/lang/Exception;
    const-string v15, "PreferenceUpgrade"

    const-string v16, "Failed to upgrade, giving up and clearing preferences"

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_1
    const-string v15, "PreferenceUpgrade"

    const-string v16, "Upgrading preferences from old version"

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v15, "account_%d_access_token"

    const-string v16, "account_access_token"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    const-string v15, "account_%d_refresh_token"

    const-string v16, "account_refresh_token"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    const-string v15, "account_%d_token_expires_at"

    const-string v16, "account_token_expires_at"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeLong(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    const-string v15, "account_%d_valid_desc"

    const-string v16, "account_valid_desc"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    const-string v15, "account_%d_name"

    const-string v16, "account_email"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    const-string v15, "account_%d_full_name"

    const-string v16, "account_full_name"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    const-string v15, "account_%d_time_zone"

    const-string v16, "account_time_zone"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    const-string v15, "account_%1$d_pos_notes"

    const-string v16, "account_pos_notes"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    const-string v15, "account_%1$d_pos_btc_amt"

    const-string v16, "account_pos_btc_amt"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    const-string v15, "account_%1$d_show_balance"

    const-string v16, "account_show_balance"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    const-string v15, "account_%1$d_first_launch"

    const-string v16, "account_first_launch"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    const-string v15, "account_%1$d_rate_notice_state"

    const-string v16, "account_rate_notice_state"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    const-string v15, "account_%1$d_app_usage"

    const-string v16, "account_app_usage"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeInt(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    const-string v15, "account_%1$d_transfer_currency_btc"

    const-string v16, "account_transfer_currency_btc"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    const-string v15, "account_%1$d_enable_tipping"

    const-string v16, "account_enable_tipping"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    const-string v15, "account_%d_pin"

    const-string v16, "account_pin"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    const-string v15, "account_%d_pin_view_allowed"

    const-string v16, "account_pin_view_allowed"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    const-string v15, "account_%d_native_currency"

    const-string v16, "account_native_currency"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    const-string v15, "account_%d_id"

    const-string v16, "user_id"

    move-object/from16 v0, v16

    invoke-static {v10, v15, v1, v0}, Lcom/coinbase/android/settings/PreferenceUpgrade;->upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    const-string v15, "account_%1$d_limit_%2$s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "buy"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "buyLimitKey":Ljava/lang/String;
    const-string v15, "account_%1$d_limit_%2$s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "sell"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 87
    .local v12, "sellLimitKey":Ljava/lang/String;
    const-string v15, "account_%1$d_limit_currency_%2$s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "buy"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "buyLimitCurrencyKey":Ljava/lang/String;
    const-string v15, "account_%1$d_limit_currency_%2$s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "sell"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "sellLimitCurrencyKey":Ljava/lang/String;
    invoke-interface {v10, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 91
    const/4 v15, 0x0

    invoke-interface {v10, v3, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "oldValue":Ljava/lang/String;
    const-string v15, "account_limit_buy"

    invoke-interface {v5, v15, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {v5, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    .end local v9    # "oldValue":Ljava/lang/String;
    :cond_1
    invoke-interface {v10, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 98
    const/4 v15, 0x0

    invoke-interface {v10, v12, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 99
    .restart local v9    # "oldValue":Ljava/lang/String;
    const-string v15, "account_limit_sell"

    invoke-interface {v5, v15, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v5, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    .end local v9    # "oldValue":Ljava/lang/String;
    :cond_2
    invoke-interface {v10, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 105
    const/4 v15, 0x0

    invoke-interface {v10, v2, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    .restart local v9    # "oldValue":Ljava/lang/String;
    const-string v15, "account_limit_currency_buy"

    invoke-interface {v5, v15, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    .end local v9    # "oldValue":Ljava/lang/String;
    :cond_3
    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 112
    const/4 v15, 0x0

    invoke-interface {v10, v11, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    .restart local v9    # "oldValue":Ljava/lang/String;
    const-string v15, "account_limit_currency_sell"

    invoke-interface {v5, v15, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v5, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    .end local v9    # "oldValue":Ljava/lang/String;
    :cond_4
    invoke-static/range {p0 .. p0}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v7

    .line 119
    .local v7, "i":Lcom/google/inject/Injector;
    const-class v15, Lcom/coinbase/android/db/DatabaseManager;

    invoke-interface {v7, v15}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coinbase/android/db/DatabaseManager;

    .line 120
    .local v4, "dbManager":Lcom/coinbase/android/db/DatabaseManager;
    const-class v15, Lcom/coinbase/api/LoginManager;

    invoke-interface {v7, v15}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coinbase/api/LoginManager;

    .line 125
    .local v8, "loginManager":Lcom/coinbase/api/LoginManager;
    new-instance v13, Ljava/util/concurrent/Semaphore;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 126
    .local v13, "sem":Ljava/util/concurrent/Semaphore;
    new-instance v14, Lcom/coinbase/android/task/SyncAccountsTask;

    new-instance v15, Lcom/coinbase/android/settings/PreferenceUpgrade$1;

    invoke-direct {v15, v13, v5}, Lcom/coinbase/android/settings/PreferenceUpgrade$1;-><init>(Ljava/util/concurrent/Semaphore;Landroid/content/SharedPreferences$Editor;)V

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/coinbase/android/task/SyncAccountsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V

    .line 148
    .local v14, "task":Lcom/coinbase/android/task/SyncAccountsTask;
    invoke-virtual {v14}, Lcom/coinbase/android/task/SyncAccountsTask;->syncAccounts()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 158
    .end local v2    # "buyLimitCurrencyKey":Ljava/lang/String;
    .end local v3    # "buyLimitKey":Ljava/lang/String;
    .end local v4    # "dbManager":Lcom/coinbase/android/db/DatabaseManager;
    .end local v7    # "i":Lcom/google/inject/Injector;
    .end local v8    # "loginManager":Lcom/coinbase/api/LoginManager;
    .end local v11    # "sellLimitCurrencyKey":Ljava/lang/String;
    .end local v12    # "sellLimitKey":Ljava/lang/String;
    .end local v13    # "sem":Ljava/util/concurrent/Semaphore;
    .end local v14    # "task":Lcom/coinbase/android/task/SyncAccountsTask;
    :cond_5
    const-string v15, "PreferenceUpgrade"

    const-string v16, "Missing KEY_ACTIVE_ACCOUNT, already upgraded"

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static upgradeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "accountIndex"    # I
    .param p3, "newKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 216
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "oldKeyFormatted":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 219
    .local v2, "oldValue":Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 220
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 224
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "oldValue":Z
    :cond_0
    return-void
.end method

.method private static upgradeInt(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "accountIndex"    # I
    .param p3, "newKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 194
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "oldKeyFormatted":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 196
    invoke-interface {p0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 197
    .local v2, "oldValue":I
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "oldValue":I
    :cond_0
    return-void
.end method

.method private static upgradeLong(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "accountIndex"    # I
    .param p3, "newKey"    # Ljava/lang/String;

    .prologue
    .line 205
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "oldKeyFormatted":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-wide/16 v4, 0x0

    invoke-interface {p0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 208
    .local v2, "oldValue":Ljava/lang/Long;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, p3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "oldValue":Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private static upgradePINPreferences(Landroid/content/SharedPreferences;Landroid/app/Application;)V
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "context"    # Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 164
    invoke-static {p1}, Lcom/coinbase/android/pin/PINManager;->isPinEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    const-string v5, "account_pin"

    const/4 v6, 0x0

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 166
    .local v1, "hasPin":Z
    :goto_0
    const-string v5, "account_pin_view_allowed"

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 168
    .local v2, "pinViewAllowed":Z
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 170
    const-string v5, "pin_enabled_app_open"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    if-eqz v2, :cond_0

    .line 172
    const-string v5, "pin_enabled_app_open"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v4, "pin_enabled_send_money"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v4, "pin_enabled_buy_bitcoin"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v4, "pin_enabled_sell_bitcoin"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "hasPin":Z
    .end local v2    # "pinViewAllowed":Z
    :cond_1
    return-void

    :cond_2
    move v1, v4

    .line 165
    goto :goto_0
.end method

.method private static upgradeString(Landroid/content/SharedPreferences;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "oldKey"    # Ljava/lang/String;
    .param p2, "accountIndex"    # I
    .param p3, "newKey"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "oldKeyFormatted":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v3, 0x0

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "oldValue":Ljava/lang/String;
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "oldValue":Ljava/lang/String;
    :cond_0
    return-void
.end method
