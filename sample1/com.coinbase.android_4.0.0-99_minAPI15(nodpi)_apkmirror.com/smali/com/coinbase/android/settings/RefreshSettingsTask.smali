.class Lcom/coinbase/android/settings/RefreshSettingsTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "RefreshSettingsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lcom/coinbase/v1/entity/User;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public call()Lcom/coinbase/v1/entity/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/coinbase/android/settings/RefreshSettingsTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getUser()Lcom/coinbase/v1/entity/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/coinbase/android/settings/RefreshSettingsTask;->call()Lcom/coinbase/v1/entity/User;

    move-result-object v0

    return-object v0
.end method

.method protected onFinally()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/android/settings/RefreshSettingsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/UserDataUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/UserDataUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public onSuccess(Lcom/coinbase/v1/entity/User;)V
    .locals 4
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 30
    iget-object v2, p0, Lcom/coinbase/android/settings/RefreshSettingsTask;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "account_email"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v2, "account_native_currency"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getNativeCurrency()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    const-string v2, "account_full_name"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    const-string v2, "account_time_zone"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    const-string v2, "account_limit_buy"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getBuyLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    const-string v2, "account_limit_sell"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getSellLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    const-string v2, "account_limit_currency_buy"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getBuyLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v2, "account_limit_currency_sell"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getSellLimit()Lorg/joda/money/Money;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string v2, "account_needs_user_agreement"

    invoke-virtual {p1}, Lcom/coinbase/v1/entity/User;->getNeedsToReAcceptUserAgreement()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p1, Lcom/coinbase/v1/entity/User;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/RefreshSettingsTask;->onSuccess(Lcom/coinbase/v1/entity/User;)V

    return-void
.end method
