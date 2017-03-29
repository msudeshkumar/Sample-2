.class public Lcom/coinbase/api/ProductionLoginManager;
.super Ljava/lang/Object;
.source "ProductionLoginManager.java"

# interfaces
.implements Lcom/coinbase/api/LoginManager;


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;
    }
.end annotation


# instance fields
.field protected dbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private failedToUpdateAccount:Z

.field protected mContext:Landroid/app/Application;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected prefsManager:Lcom/coinbase/android/settings/PreferencesManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/coinbase/api/ProductionLoginManager;->retryCount:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/api/ProductionLoginManager;->failedToUpdateAccount:Z

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/api/ProductionLoginManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/api/ProductionLoginManager;

    .prologue
    .line 44
    iget v0, p0, Lcom/coinbase/api/ProductionLoginManager;->retryCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/coinbase/api/ProductionLoginManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/api/ProductionLoginManager;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/coinbase/api/ProductionLoginManager;->retryCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/coinbase/api/ProductionLoginManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/coinbase/api/ProductionLoginManager;

    .prologue
    .line 44
    iget v0, p0, Lcom/coinbase/api/ProductionLoginManager;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coinbase/api/ProductionLoginManager;->retryCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/coinbase/api/ProductionLoginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/api/ProductionLoginManager;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/coinbase/api/ProductionLoginManager;->updateAccounts()V

    return-void
.end method

.method static synthetic access$202(Lcom/coinbase/api/ProductionLoginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/api/ProductionLoginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/coinbase/api/ProductionLoginManager;->failedToUpdateAccount:Z

    return p1
.end method

.method private logUser(Lcom/coinbase/v1/entity/User;)V
    .locals 2
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 238
    const-string v0, "country code"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "currency code"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getNativeCurrency()Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private saveUser(Lcom/coinbase/v1/entity/User;)V
    .locals 4
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 244
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 245
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v2, "account_email"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v2, "user_feature_flags"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getFeatureFlags()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/Utils;->curry(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v2, "user_country_code"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v2, "referrer_id"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getReferrerId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v2, "account_native_currency"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getNativeCurrency()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string v2, "account_full_name"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string v2, "account_time_zone"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string v2, "account_limit_buy"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getBuyLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    const-string v2, "account_limit_sell"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getSellLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v2, "account_limit_currency_buy"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getBuyLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v2, "account_limit_currency_sell"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getSellLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v2, "account_bitcoin_units"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string v2, "account_allowed_payment_methods"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getAllowedPaymentMethods()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/Utils;->curry(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v2, "account_needs_user_agreement"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getNeedsToReAcceptUserAgreement()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    return-void
.end method

.method private updateAccounts()V
    .locals 5

    .prologue
    .line 265
    iget-object v3, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 266
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 268
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v1, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "limit"

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    new-instance v4, Lcom/coinbase/api/ProductionLoginManager$1;

    invoke-direct {v4, p0, v0}, Lcom/coinbase/api/ProductionLoginManager$1;-><init>(Lcom/coinbase/api/ProductionLoginManager;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v1, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getAccounts(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 323
    return-void
.end method


# virtual methods
.method public createUser(Lcom/coinbase/v1/entity/User;)V
    .locals 4
    .param p1, "userParams"    # Lcom/coinbase/v1/entity/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "all"

    .line 197
    .local v0, "scope":Ljava/lang/String;
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v0}, Lcom/coinbase/Coinbase;->createUserWithOAuth(Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/UserResponse;

    move-result-object v1

    .line 198
    .local v1, "userResponse":Lcom/coinbase/v1/entity/UserResponse;
    invoke-virtual {v1}, Lcom/coinbase/v1/entity/UserResponse;->getOauth()Lcom/coinbase/v1/entity/OAuthTokensResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/coinbase/api/ProductionLoginManager;->signin(Lcom/coinbase/v1/entity/OAuthTokensResponse;)V

    .line 199
    return-void
.end method

.method public declared-synchronized getAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->needToRefreshAccessToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->refreshAccessToken()V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "account_access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 449
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAccountValid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 335
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "account_valid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "account_valid_desc"

    const-string v2, "No msg"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccounts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v4, p0, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 93
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v2}, Lcom/coinbase/android/db/AccountORM;->list(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    iget-object v4, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "active_account_id"

    const/4 v6, 0x0

    .line 96
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "keyAccountId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 98
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    const/4 v4, 0x0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_1
    iget-object v4, p0, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v4}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    return-object v1

    .end local v1    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    .end local v3    # "keyAccountId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v5}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v4
.end method

.method public getActiveAccountId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 420
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 421
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "active_account_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 433
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "active_account_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveAccountUuId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 427
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "active_account_uuid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveUserCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 345
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "user_country_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveUserEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 444
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "account_email"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActiveUserReferrerId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "referrer_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllowedPaymentMethods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "account_allowed_payment_methods"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->uncurry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAuthCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "twoFactor"    # Ljava/lang/String;
    .param p4, "referrerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 460
    .local v0, "device":Ljava/lang/String;
    :goto_0
    const-string v3, "all"

    .line 462
    .local v3, "scope":Ljava/lang/String;
    new-instance v1, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;

    invoke-direct {v1}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;-><init>()V

    .line 463
    .local v1, "meta":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    invoke-virtual {v1, v0}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;->setName(Ljava/lang/String;)V

    .line 465
    new-instance v2, Lcom/coinbase/v1/entity/OAuthCodeRequest;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/OAuthCodeRequest;-><init>()V

    .line 466
    .local v2, "request":Lcom/coinbase/v1/entity/OAuthCodeRequest;
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setClientId(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setClientSecret(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v2, v3}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setScope(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v2, p1}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setUsername(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v2, p2}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setPassword(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v2, p4}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setReferrerId(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v2, p3}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getRedirectUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/coinbase/v1/entity/OAuthCodeRequest;->setRedirectUri(Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/coinbase/Coinbase;->getAuthCode(Lcom/coinbase/v1/entity/OAuthCodeRequest;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 458
    .end local v0    # "device":Ljava/lang/String;
    .end local v1    # "meta":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
    .end local v2    # "request":Lcom/coinbase/v1/entity/OAuthCodeRequest;
    .end local v3    # "scope":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitcoinUnits()Ljava/lang/String;
    .locals 3

    .prologue
    .line 438
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "account_bitcoin_units"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getClient()Lcom/coinbase/api/internal/CoinbaseInternal;
    .locals 1

    .prologue
    .line 508
    invoke-static {}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInstance()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    return-object v0
.end method

.method protected getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "34183b03a3e1f0b74ee6aa8a6150e90125de2d6c1ee4ff7880c2b7e6e98b11f5"

    return-object v0
.end method

.method protected getClientSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "2c481f46f9dc046b4b9a67e630041b9906c023d139fbc77a47053328b9d3122d"

    return-object v0
.end method

.method public getFeatureFlags()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 375
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "user_feature_flags"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->uncurry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;
    .locals 7

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getActiveAccountId()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "accountId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 115
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getAccounts()Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/account/Data;

    .line 119
    .local v3, "act":Lcom/coinbase/v2/models/account/Data;
    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    move-object v0, v3

    .line 128
    .end local v3    # "act":Lcom/coinbase/v2/models/account/Data;
    :cond_1
    :goto_0
    return-object v0

    .line 122
    .restart local v3    # "act":Lcom/coinbase/v2/models/account/Data;
    :cond_2
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/coinbase/v2/models/account/Data$Type;->WALLET:Lcom/coinbase/v2/models/account/Data$Type;

    invoke-virtual {v6}, Lcom/coinbase/v2/models/account/Data$Type;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    move-object v0, v3

    .line 124
    goto :goto_0
.end method

.method public getReceiveAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v1}, Lcom/coinbase/android/db/DatabaseManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 412
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {v0, p1}, Lcom/coinbase/android/db/AccountORM;->getCachedReceiveAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->dbManager:Lcom/coinbase/android/db/DatabaseManager;

    invoke-virtual {v2}, Lcom/coinbase/android/db/DatabaseManager;->closeDatabase()V

    throw v1
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coinbase://login?csrf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/api/ProductionLoginManager;->prefsManager:Lcom/coinbase/android/settings/PreferencesManager;

    invoke-interface {v1}, Lcom/coinbase/android/settings/PreferencesManager;->getLoginCSRFToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTokens(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    .locals 4
    .param p1, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getRedirectUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/coinbase/Coinbase;->getTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;

    move-result-object v0

    return-object v0
.end method

.method public isAllowedPaymentMethodSepa()Z
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getAllowedPaymentMethods()Ljava/util/List;

    move-result-object v1

    .line 399
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 400
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    .local v0, "method":Ljava/lang/String;
    sget-object v3, Lcom/coinbase/v1/entity/PaymentMethod$Type;->SEPA_BANK_ACCOUNT:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/PaymentMethod$Type;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    const/4 v2, 0x1

    .line 405
    .end local v0    # "method":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isInstantExchangeFlag()Z
    .locals 4

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getFeatureFlags()Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 352
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    .local v0, "method":Ljava/lang/String;
    sget-object v3, Lcom/coinbase/v1/entity/User$Flag;->INSTANT_EXCHANGE:Lcom/coinbase/v1/entity/User$Flag;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/User$Flag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    const/4 v2, 0x1

    .line 357
    .end local v0    # "method":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isNewVerificationsPageFlag()Z
    .locals 4

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getFeatureFlags()Ljava/util/List;

    move-result-object v1

    .line 363
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 364
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 365
    .local v0, "method":Ljava/lang/String;
    sget-object v3, Lcom/coinbase/v1/entity/User$Flag;->NEW_VERIFICATIONS_PAGE:Lcom/coinbase/v1/entity/User$Flag;

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/User$Flag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 366
    const/4 v2, 0x1

    .line 369
    .end local v0    # "method":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getAccountValid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToRefreshAccessToken()Z
    .locals 8

    .prologue
    .line 132
    const v0, 0x493e0

    .line 133
    .local v0, "FIVE_MINUTES":I
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v4, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "account_token_expires_at"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 136
    .local v2, "tokenExpiresAt":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    sub-long v6, v2, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    monitor-exit p0

    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 137
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "tokenExpiresAt":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public refreshAccessToken()V
    .locals 10

    .prologue
    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    const-string v4, "Coinbase"

    const-string v5, "Refreshing access token..."

    invoke-static {v4, v5}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v4, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "account_refresh_token"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 149
    .local v2, "refreshToken":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v4

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/coinbase/Coinbase;->refreshTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 156
    .local v3, "response":Lcom/coinbase/v1/entity/OAuthTokensResponse;
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v4, "account_access_token"

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthTokensResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    const-string v4, "account_refresh_token"

    invoke-virtual {v3}, Lcom/coinbase/v1/entity/OAuthTokensResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    const-string v4, "account_token_expires_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v6, v8

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    monitor-exit p0

    .line 164
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "response":Lcom/coinbase/v1/entity/OAuthTokensResponse;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const-string v4, "Coinbase"

    const-string v5, "Error when fetching new access token."

    invoke-static {v4, v5}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    monitor-exit p0

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "refreshToken":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public refreshUser()Z
    .locals 3

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v1

    .line 223
    .local v1, "user":Lcom/coinbase/v1/entity/User;
    invoke-direct {p0, v1}, Lcom/coinbase/api/ProductionLoginManager;->saveUser(Lcom/coinbase/v1/entity/User;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/coinbase/api/ProductionLoginManager;->logUser(Lcom/coinbase/v1/entity/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    const/4 v2, 0x0

    .line 232
    .end local v1    # "user":Lcom/coinbase/v1/entity/User;
    :goto_0
    return v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->isSignedIn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 232
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public revokeAccessToken()V
    .locals 5

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    const-string v3, "Coinbase"

    const-string v4, "Revoking access token..."

    invoke-static {v3, v4}, Lcom/coinbase/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v3, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 172
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "account_access_token"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 173
    .local v0, "accessToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/Coinbase;->revokeToken()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 185
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "account_access_token"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v3, "account_refresh_token"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v3, "account_token_expires_at"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    monitor-exit p0

    .line 191
    return-void

    .line 176
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v3, "Coinbase"

    const-string v4, "Error when revoking access token."

    invoke-static {v3, v4}, Lcom/coinbase/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/coinbase/v1/exception/CoinbaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-static {}, Lcom/coinbase/Coinbase;->getInstance()Lcom/coinbase/Coinbase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/coinbase/Coinbase;->sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public setAccountValid(ZLjava/lang/String;)V
    .locals 3
    .param p1, "status"    # Z
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 327
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "account_valid"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string v2, "account_valid_desc"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    return-void
.end method

.method public declared-synchronized signin(Lcom/coinbase/v1/entity/OAuthTokensResponse;)V
    .locals 8
    .param p1, "tokens"    # Lcom/coinbase/v1/entity/OAuthTokensResponse;

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthTokensResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    const-string v2, "account_access_token"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthTokensResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    const-string v2, "account_refresh_token"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/OAuthTokensResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string v2, "account_token_expires_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x6ddd00

    add-long/2addr v4, v6

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 212
    const-string v2, "account_valid"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    invoke-direct {p0}, Lcom/coinbase/api/ProductionLoginManager;->updateAccounts()V

    .line 216
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->refreshUser()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 205
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized signout()Z
    .locals 5

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 487
    new-instance v2, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;

    invoke-virtual {p0}, Lcom/coinbase/api/ProductionLoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;-><init>(Lcom/coinbase/api/ProductionLoginManager;Lcom/coinbase/Coinbase;)V

    invoke-virtual {v2}, Lcom/coinbase/api/ProductionLoginManager$RevokeTokenTask;->execute()V

    .line 490
    :cond_0
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    const-string v3, "coinbase_client_cache"

    invoke-virtual {v2, v3}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    .line 492
    .local v1, "deleted":Z
    iget-object v2, p0, Lcom/coinbase/api/ProductionLoginManager;->mContext:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 493
    .local v0, "defaultPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 494
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - Sign out"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 496
    const/4 v2, 0x0

    const-string v3, "logged out"

    invoke-virtual {p0, v2, v3}, Lcom/coinbase/api/ProductionLoginManager;->setAccountValid(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    monitor-exit p0

    return v1

    .line 486
    .end local v0    # "defaultPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "deleted":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
