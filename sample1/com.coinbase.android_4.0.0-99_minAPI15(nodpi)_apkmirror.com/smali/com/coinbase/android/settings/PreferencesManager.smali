.class public interface abstract Lcom/coinbase/android/settings/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# virtual methods
.method public abstract getLoginCSRFToken()Ljava/lang/String;
.end method

.method public abstract getNativeCurrency()Lorg/joda/money/CurrencyUnit;
.end method

.method public abstract getSavedMerchantNotes()Ljava/lang/String;
.end method

.method public abstract isTippingEnabled()Z
.end method

.method public abstract posUsesBtc()Z
.end method

.method public abstract saveMerchantNotes(Ljava/lang/String;)V
.end method

.method public abstract setPosUsesBtc(Z)V
.end method

.method public abstract setTippingEnabled(Z)V
.end method
