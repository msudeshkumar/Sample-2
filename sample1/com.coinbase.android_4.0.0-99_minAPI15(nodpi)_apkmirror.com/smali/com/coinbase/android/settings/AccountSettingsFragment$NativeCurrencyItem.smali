.class Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeCurrencyItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;
    }
.end annotation


# instance fields
.field protected mCurrencyOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/joda/money/CurrencyUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070055
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->getDefaultOptionIndex()I

    move-result v0

    return v0
.end method

.method private getDefaultOptionIndex()I
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "currentCurrencyCode":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->mCurrencyOptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->mCurrencyOptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v2}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 394
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string v0, "account_native_currency"

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->getCachedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    iget-object v1, v1, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->execute()V

    .line 405
    return-void
.end method
