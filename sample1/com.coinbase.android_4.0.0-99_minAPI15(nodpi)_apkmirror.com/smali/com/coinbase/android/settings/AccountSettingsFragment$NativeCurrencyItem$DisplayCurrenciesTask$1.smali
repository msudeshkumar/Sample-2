.class Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$1;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/joda/money/CurrencyUnit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;)V
    .locals 0
    .param p1, "this$2"    # Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$1;->this$2:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 352
    check-cast p1, Lorg/joda/money/CurrencyUnit;

    check-cast p2, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {p0, p1, p2}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$1;->compare(Lorg/joda/money/CurrencyUnit;Lorg/joda/money/CurrencyUnit;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/joda/money/CurrencyUnit;Lorg/joda/money/CurrencyUnit;)I
    .locals 2
    .param p1, "lhs"    # Lorg/joda/money/CurrencyUnit;
    .param p2, "rhs"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 355
    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
