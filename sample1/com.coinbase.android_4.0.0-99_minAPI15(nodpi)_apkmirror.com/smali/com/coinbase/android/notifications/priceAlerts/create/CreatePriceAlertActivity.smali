.class public Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
.super Lroboguice/activity/RoboActivity;
.source "CreatePriceAlertActivity.java"


# static fields
.field private static final FIRST_ITEM_VALUE:I = 0x1

.field private static final MIN_ITEM_COUNT:I = 0x14

.field public static TICK_MARKS_PER_INCREMENT:I


# instance fields
.field aboveButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ce
    .end annotation
.end field

.field aboveViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

.field private baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

.field belowButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00cc
    .end annotation
.end field

.field belowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field cancelButton:Landroid/widget/ImageButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c8
    .end annotation
.end field

.field centTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00d1
    .end annotation
.end field

.field createNotificationButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00d5
    .end annotation
.end field

.field createPriceAlertProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00d6
    .end annotation
.end field

.field currencyTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00cf
    .end annotation
.end field

.field private currentPrice:D

.field private currentPriceUSD:D

.field dollarTextView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00d0
    .end annotation
.end field

.field final handler:Landroid/os/Handler;

.field private initialPosition:I

.field leftDividerView:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ca
    .end annotation
.end field

.field private linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field progressBar:Lcom/coinbase/android/ui/MaterialProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c2
    .end annotation
.end field

.field rightDividerView:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00cd
    .end annotation
.end field

.field rvItems:Landroid/support/v7/widget/RecyclerView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00d3
    .end annotation
.end field

.field scrollLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c9
    .end annotation
.end field

.field scrollListener:Lcom/coinbase/android/notifications/priceAlerts/create/OnScrollListener;

.field private scrollTaskDelay:I

.field private scrollerTask:Ljava/lang/Runnable;

.field private selectedPrice:D

.field private unit:Lorg/joda/money/CurrencyUnit;

.field public xOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x5

    sput v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->TICK_MARKS_PER_INCREMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lroboguice/activity/RoboActivity;-><init>()V

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollTaskDelay:I

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->errorOccurred()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Landroid/widget/Button;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;DDIDI)V
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # I
    .param p6, "x4"    # D
    .param p8, "x5"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareScrollView(DDIDI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;IDDD)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # D
    .param p4, "x3"    # D
    .param p6, "x4"    # D

    .prologue
    .line 50
    invoke-direct/range {p0 .. p7}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareItems(IDDD)V

    return-void
.end method

.method static synthetic access$1300(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->initialPosition:I

    return v0
.end method

.method static synthetic access$1302(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->initialPosition:I

    return p1
.end method

.method static synthetic access$1400(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollerTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollTaskDelay:I

    return v0
.end method

.method static synthetic access$1600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)I
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # D

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->numberOfDigits(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->updateOperatorViews(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->checkSpotPriceCompletion()V

    return-void
.end method

.method static synthetic access$302(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPriceUSD:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createPriceAlert()V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->handleRequestError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;
    .param p1, "x1"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D

    return-wide p1
.end method

.method static synthetic access$700(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lorg/joda/money/CurrencyUnit;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method static synthetic access$800(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lcom/squareup/otto/Bus;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->bus:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private checkSpotPriceCompletion()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 546
    iget-wide v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPriceUSD:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 547
    iget-wide v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    invoke-direct {p0, v0, v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareViewWithPrice(D)V

    .line 549
    :cond_0
    return-void
.end method

.method private createPriceAlert()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-wide v6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    double-to-long v6, v6

    iget-wide v8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D

    double-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 269
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createNotificationButton:Landroid/widget/Button;

    invoke-direct {p0, v6, v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableButton(Landroid/widget/Button;Z)V

    .line 206
    iget-object v6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createPriceAlertProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v6, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 209
    iget-wide v6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D

    iget-wide v8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    const/4 v1, 0x1

    .line 210
    .local v1, "isAbove":Z
    :cond_1
    const-string v3, "1 BTC "

    .line 212
    .local v3, "messagePart":Ljava/lang/String;
    iget-object v6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    sget-object v7, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->ETH:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne v6, v7, :cond_2

    .line 213
    const-string v3, "1 ETH "

    .line 216
    :cond_2
    if-eqz v1, :cond_4

    const-string v4, "> "

    .line 217
    .local v4, "operator":Ljava/lang/String;
    :goto_1
    const-string v0, ""

    .line 218
    .local v0, "emoji":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_3

    .line 219
    if-eqz v1, :cond_5

    const-string v0, "\ud83d\udcc8 "

    .line 220
    :cond_3
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v7}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D

    double-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "message":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "device_id"

    invoke-static {p0}, Lcom/coinbase/android/utils/DeviceUtils;->deviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v6, "platform"

    const-string v7, "GCM"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v6, "application_id"

    const-string v7, "coinbase_android"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v6, "above"

    invoke-static {v1}, Lcom/coinbase/android/utils/PriceAlertUtils;->aboveString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v6, "currency_code"

    iget-object v7, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v7}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v6, "message"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v6, "price"

    iget-wide v8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v6, "base_currency_code"

    iget-object v7, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    invoke-virtual {v7}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;

    invoke-direct {v7, p0, v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$5;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->createPriceAlert(Ljava/util/HashMap;Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 216
    .end local v0    # "emoji":Ljava/lang/String;
    .end local v2    # "message":Ljava/lang/String;
    .end local v4    # "operator":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string v4, "< "

    goto/16 :goto_1

    .line 219
    .restart local v0    # "emoji":Ljava/lang/String;
    .restart local v4    # "operator":Ljava/lang/String;
    :cond_5
    const-string v0, "\ud83d\udcc9 "

    goto/16 :goto_2
.end method

.method private enableButton(Landroid/widget/Button;Z)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "shouldEnable"    # Z

    .prologue
    const v2, 0x7f0c0033

    const v1, 0x7f0c0032

    .line 294
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 301
    .local v0, "newColor":I
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->setButtonColor(Landroid/widget/Button;I)V

    .line 302
    return-void

    .end local v0    # "newColor":I
    :cond_0
    move v1, v2

    .line 298
    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p2, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "newColor":I
    goto :goto_1

    .end local v0    # "newColor":I
    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private enableViews(Ljava/util/List;Z)V
    .locals 6
    .param p2, "shouldEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const v3, 0x7f0c0086

    const v2, 0x7f0c0085

    .line 283
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p2, :cond_0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 288
    .local v0, "newColor":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 289
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->setViewColor(Landroid/view/View;I)V

    goto :goto_2

    .end local v0    # "newColor":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    move v2, v3

    .line 284
    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p2, :cond_2

    :goto_3
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "newColor":I
    goto :goto_1

    .end local v0    # "newColor":I
    :cond_2
    move v2, v3

    goto :goto_3

    .line 291
    .restart local v0    # "newColor":I
    :cond_3
    return-void
.end method

.method private errorOccurred()V
    .locals 1

    .prologue
    .line 197
    const v0, 0x7f0702d8

    invoke-virtual {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->finish()V

    .line 199
    return-void
.end method

.method private handleRequestError(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 272
    if-nez p1, :cond_0

    .line 273
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 275
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createPriceAlertProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createNotificationButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableButton(Landroid/widget/Button;Z)V

    .line 279
    return-void
.end method

.method private numberOfDigits(D)I
    .locals 3
    .param p1, "num"    # D

    .prologue
    .line 305
    invoke-static {p1, p2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private prepareItems(IDDD)V
    .locals 10
    .param p1, "itemCount"    # I
    .param p2, "increment"    # D
    .param p4, "startPosition"    # D
    .param p6, "price"    # D

    .prologue
    .line 468
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currencyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currencyTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 470
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->dollarTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 471
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->centTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 472
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->progressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, -0x1

    .local v8, "i":I
    :goto_0
    if-ge v8, p1, :cond_0

    .line 478
    double-to-int v0, p2

    mul-int v9, v8, v0

    .line 479
    .local v9, "value":I
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 482
    .end local v9    # "value":I
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 483
    .local v3, "scrollLayoutWidth":I
    new-instance v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

    move-object v1, p0

    move-wide/from16 v4, p6

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IDD)V

    iput-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->adapter:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

    .line 484
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->adapter:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 485
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, p0, v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 486
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 489
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$10;

    invoke-direct {v1, p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$10;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;

    invoke-direct {v1, p0, p4, p5}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$11;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method private prepareScrollView(DDIDI)V
    .locals 15
    .param p1, "maxValue"    # D
    .param p3, "currentValue"    # D
    .param p5, "significantDigits"    # I
    .param p6, "increment"    # D
    .param p8, "itemCount"    # I

    .prologue
    .line 371
    move-wide/from16 v5, p1

    .line 373
    .local v5, "totalRange":D
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 375
    .local v3, "cellWidth":I
    add-int/lit8 v0, p8, -0x2

    mul-int v4, v3, v0

    .line 377
    .local v4, "scrollViewContentWidth":I
    sget v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->TICK_MARKS_PER_INCREMENT:I

    div-int v12, v3, v0

    .line 378
    .local v12, "singleTickWidth":I
    new-instance v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;

    invoke-direct {v0, p0, v12}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$7;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;I)V

    iput-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollListener:Lcom/coinbase/android/notifications/priceAlerts/create/OnScrollListener;

    .line 396
    new-instance v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;

    invoke-direct {v0, p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$8;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    iput-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollerTask:Ljava/lang/Runnable;

    .line 412
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f090058

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v2, v0, v1

    .line 413
    .local v2, "placeholderWidth":I
    iget-object v13, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;

    move-object v1, p0

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p3

    invoke-direct/range {v0 .. v11}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;IIIDIDD)V

    invoke-virtual {v13, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 465
    return-void
.end method

.method private prepareViewWithPrice(D)V
    .locals 21
    .param p1, "price"    # D

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPriceUSD:D

    div-double v12, p1, v2

    .line 318
    .local v12, "conversionRate":D
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    .line 319
    .local v14, "increment":D
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->numberOfDigits(D)I

    move-result v10

    .line 320
    .local v10, "incrementSignificantDigits":I
    const/4 v2, 0x1

    if-le v10, v2, :cond_0

    .line 321
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    add-int/lit8 v8, v10, -0x1

    int-to-double v8, v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    .line 322
    .local v18, "singleIncrement":D
    sget v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->TICK_MARKS_PER_INCREMENT:I

    int-to-double v2, v2

    mul-double v14, v2, v18

    .line 324
    .end local v18    # "singleIncrement":D
    :cond_0
    move-wide v4, v14

    .line 326
    .local v4, "roundedIncrement":D
    const/16 v17, 0x3

    .line 327
    .local v17, "significantDigits":I
    const/4 v2, 0x3

    const/4 v3, 0x1

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Lcom/coinbase/android/utils/Utils;->roundToSignificantFigures(DIZ)D

    move-result-wide v6

    .line 328
    .local v6, "roundedPrice":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v2}, Lorg/joda/money/CurrencyUnit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v16

    .line 329
    .local v16, "money":Lorg/joda/money/Money;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->dollarTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v9, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 331
    invoke-static {v8, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 329
    move-object/from16 v0, v16

    invoke-static {v0, v3, v8}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const-string v11, "00"

    .line 334
    .local v11, "centString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->numberOfDigits(D)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 335
    const-string v11, ""

    .line 336
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->centTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    new-instance v2, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v2 .. v10}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;DDDI)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method private setButtonColor(Landroid/widget/Button;I)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "newColor"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 537
    return-void
.end method

.method private setViewColor(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "newColor"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 528
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 529
    check-cast p1, Landroid/widget/Button;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 532
    :goto_0
    return-void

    .line 531
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateOperatorViews(JJ)V
    .locals 7
    .param p1, "value"    # J
    .param p3, "selectedValue"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 510
    const/4 v0, 0x1

    .line 511
    .local v0, "createEnabled":Z
    cmp-long v1, p3, p1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_2

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    .line 513
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    .line 514
    const/4 v0, 0x0

    .line 523
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createNotificationButton:Landroid/widget/Button;

    invoke-direct {p0, v1, v0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableButton(Landroid/widget/Button;Z)V

    .line 524
    return-void

    .line 515
    :cond_2
    cmp-long v1, p3, p1

    if-lez v1, :cond_3

    .line 516
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    .line 517
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    invoke-direct {p0, v1, v5}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    goto :goto_0

    .line 518
    :cond_3
    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    invoke-direct {p0, v1, v5}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    .line 520
    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    invoke-direct {p0, v1, v4}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    goto :goto_0
.end method


# virtual methods
.method public finishActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->finish()V

    .line 541
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 111
    invoke-super {p0, p1}, Lroboguice/activity/RoboActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v2, 0x7f030022

    invoke-virtual {p0, v2}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->setContentView(I)V

    .line 114
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->progressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v2, v5}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createPriceAlertProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v2, v3}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rvItems:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "account_native_currency"

    .line 119
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "currency":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    invoke-static {v1}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    .line 127
    :goto_0
    iput-wide v8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPrice:D

    .line 128
    iput-wide v8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->currentPriceUSD:D

    .line 130
    invoke-virtual {p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity;->CURRENT_BASE_CURRENCY:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    iput-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 133
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    .line 134
    .local v0, "client":Lcom/coinbase/Coinbase;
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$1;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    invoke-virtual {v0, v2, v1, v6, v3}, Lcom/coinbase/Coinbase;->getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 151
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->baseCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USD"

    new-instance v4, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;

    invoke-direct {v4, p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$2;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    invoke-virtual {v0, v2, v3, v6, v4}, Lcom/coinbase/Coinbase;->getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    .line 170
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowButton:Landroid/widget/Button;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->leftDividerView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    .line 174
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveButton:Landroid/widget/Button;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    iget-object v3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->rightDividerView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createNotificationButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$3;

    invoke-direct {v3, p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$3;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->belowViews:Ljava/util/List;

    invoke-direct {p0, v2, v5}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    .line 185
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->aboveViews:Ljava/util/List;

    invoke-direct {p0, v2, v5}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableViews(Ljava/util/List;Z)V

    .line 186
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->createNotificationButton:Landroid/widget/Button;

    invoke-direct {p0, v2, v5}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->enableButton(Landroid/widget/Button;Z)V

    .line 188
    iget-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->cancelButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$4;

    invoke-direct {v3, p0}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$4;-><init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    .line 123
    .end local v0    # "client":Lcom/coinbase/Coinbase;
    :cond_0
    sget-object v2, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    iput-object v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;

    goto/16 :goto_0
.end method

.method public startScrollerTask()V
    .locals 4

    .prologue
    .line 311
    iget v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    iput v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->initialPosition:I

    .line 312
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollerTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->scrollTaskDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    return-void
.end method
