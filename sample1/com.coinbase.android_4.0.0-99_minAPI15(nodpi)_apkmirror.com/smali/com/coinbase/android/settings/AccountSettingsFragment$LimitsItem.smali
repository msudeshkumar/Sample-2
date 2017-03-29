.class Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitsItem"
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f07004f
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 9

    .prologue
    .line 420
    const-string v6, "account_limit_currency_buy"

    const-string v7, "BTC"

    invoke-virtual {p0, v6, v7}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->getCachedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "buyCurrency":Ljava/lang/String;
    const-string v6, "account_limit_currency_sell"

    const-string v7, "BTC"

    invoke-virtual {p0, v6, v7}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->getCachedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "sellCurrency":Ljava/lang/String;
    const-string v6, "account_limit_buy"

    const-string v7, "0"

    invoke-virtual {p0, v6, v7}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->getCachedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "buyAmount":Ljava/lang/String;
    const-string v6, "account_limit_sell"

    const-string v7, "0"

    invoke-virtual {p0, v6, v7}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->getCachedValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "sellAmount":Ljava/lang/String;
    iget-object v6, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "buyLimit":Ljava/lang/String;
    iget-object v6, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    .local v5, "sellLimit":Ljava/lang/String;
    iget-object v6, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v7, 0x7f070050

    .line 429
    invoke-virtual {v6, v7}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    .line 428
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "https://coinbase.com/verifications"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 441
    return-void
.end method
