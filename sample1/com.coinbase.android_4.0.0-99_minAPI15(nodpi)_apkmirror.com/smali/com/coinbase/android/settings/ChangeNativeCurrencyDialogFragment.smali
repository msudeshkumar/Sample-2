.class public Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;
.super Lcom/coinbase/android/dialog/SpinnerDialogFragment;
.source "ChangeNativeCurrencyDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/dialog/SpinnerDialogFragment",
        "<",
        "Lorg/joda/money/CurrencyUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final CURRENCIES:Ljava/lang/String; = "ChooseCurrenciesDialogFragment_Currencies"


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field protected mCurrencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation
.end field

.field public selectedCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOptionDisplayText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->getOptionDisplayText(Lorg/joda/money/CurrencyUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionDisplayText(Lorg/joda/money/CurrencyUnit;)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 42
    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOptions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->getOptions()[Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()[Lorg/joda/money/CurrencyUnit;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->mCurrencies:Ljava/util/List;

    iget-object v1, p0, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->mCurrencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/joda/money/CurrencyUnit;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    iput-object p1, p0, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public bridge synthetic onChosenValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->onChosenValue(Lorg/joda/money/CurrencyUnit;)V

    return-void
.end method

.method public onChosenValue(Lorg/joda/money/CurrencyUnit;)V
    .locals 1
    .param p1, "newValue"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->selectedCurrency:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ChooseCurrenciesDialogFragment_Currencies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->mCurrencies:Ljava/util/List;

    .line 66
    invoke-super {p0, p1}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
