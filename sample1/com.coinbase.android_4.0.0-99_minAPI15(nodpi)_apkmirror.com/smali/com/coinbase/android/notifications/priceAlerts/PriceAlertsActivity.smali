.class public Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "PriceAlertsActivity.java"


# static fields
.field public static CURRENT_BASE_CURRENCY:Ljava/lang/String;


# instance fields
.field protected bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field createPriceAlertButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0113
    .end annotation
.end field

.field private currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0110
    .end annotation
.end field

.field currentPriceTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0111
    .end annotation
.end field

.field emptyStateDescription:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d010f
    .end annotation
.end field

.field emptyStateLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d010c
    .end annotation
.end field

.field private gcmToken:Ljava/lang/String;

.field listView:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0112
    .end annotation
.end field

.field localPriceAlerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
            ">;"
        }
    .end annotation
.end field

.field prefs:Landroid/content/SharedPreferences;

.field priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "current_base_currency"

    sput-object v0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->CURRENT_BASE_CURRENCY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->gcmToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->gcmToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)Lcom/coinbase/api/LoginManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    return-object v0
.end method

.method private filteredPriceAlerts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/coinbase/android/utils/PriceAlertUtils;->getSavedPriceAlerts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->localPriceAlerts:Ljava/util/ArrayList;

    .line 208
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {v3}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v2

    .line 210
    .local v2, "currency":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    if-nez v2, :cond_0

    .line 211
    sget-object v2, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 213
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->localPriceAlerts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;

    .line 216
    .local v0, "alert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    sget-object v4, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne v2, v4, :cond_2

    iget-object v4, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-nez v4, :cond_2

    .line 218
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_2
    iget-object v4, v0, Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne v2, v4, :cond_1

    .line 223
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v0    # "alert":Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    :cond_3
    return-object v1
.end method

.method private getSpotPrice()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 160
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "account_native_currency"

    .line 161
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "nativeCurrency":Ljava/lang/String;
    if-nez v2, :cond_0

    sget-object v3, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "currency":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {v3}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "baseCurrency":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$4;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1, v5, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 188
    return-void

    .end local v0    # "baseCurrency":Ljava/lang/String;
    .end local v1    # "currency":Ljava/lang/String;
    :cond_0
    move-object v1, v2

    .line 163
    goto :goto_0
.end method

.method private refreshData()V
    .locals 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->filteredPriceAlerts()Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-direct {v1, p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    .line 195
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->clear()V

    .line 200
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->addAll(Ljava/util/Collection;)V

    .line 201
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->priceAlertsAdapter:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    invoke-direct {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->setUpEmptyViews(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setUpEmptyViewDescription(Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;)V
    .locals 5
    .param p1, "currency"    # Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    const v2, 0x7f070199

    invoke-virtual {p0, v2}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "descriptionFormat":Ljava/lang/String;
    sget-object v2, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne p1, v2, :cond_0

    .line 242
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0702c5

    invoke-virtual {p0, v3}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->emptyStateDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 244
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0702dc

    invoke-virtual {p0, v3}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private setUpEmptyViews(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->emptyStateLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->emptyStateLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public currencySelected(Lcom/coinbase/android/ui/CurrencySelectorLayout;)V
    .locals 1
    .param p1, "currencySelectorLayout"    # Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->getSpotPrice()V

    .line 263
    invoke-virtual {p1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->setUpEmptyViewDescription(Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;)V

    .line 264
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->refreshData()V

    .line 265
    return-void
.end method

.method public deleteNotification(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 0
    .param p1, "localPriceAlert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->refreshData()V

    .line 253
    return-void
.end method

.method public notificationCreated(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
    .locals 0
    .param p1, "localPriceAlert"    # Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->refreshData()V

    .line 258
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->setRequestedOrientation(I)V

    .line 76
    :goto_0
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->initToolbar()V

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 80
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->refreshData()V

    .line 82
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->createPriceAlertButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$1;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$2;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 104
    new-instance v0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;

    invoke-direct {v0, p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;-><init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-static {p0}, Lcom/coinbase/android/utils/Utils;->lastSelectedCurrencyType(Landroid/content/Context;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->setCurrency(Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;)V

    .line 156
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->filteredPriceAlerts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->setUpEmptyViews(Ljava/util/ArrayList;)V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onStart()V

    .line 143
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/coinbase/android/CoinbaseActivity;->onStop()V

    .line 149
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 150
    return-void
.end method
