.class public Lcom/coinbase/android/pricechart/PriceChartFragment;
.super Lroboguice/fragment/RoboFragment;
.source "PriceChartFragment.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartGestureListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$Period;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$BackgroundColor;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;,
        Lcom/coinbase/android/pricechart/PriceChartFragment$PriceValueFormatter;
    }
.end annotation


# static fields
.field private static CHART_PADDING_PERCENTAGE:F = 0.0f

.field private static final FILL_CHART_ALPHA:I = 0x13

.field private static final LINE_WIDTH:F = 2.0f

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLATION_X:Ljava/lang/String; = "translationX"

.field private static final TRANSLATION_Y:Ljava/lang/String; = "translationY"


# instance fields
.field private final CHART_LINE_COLOR:I

.field private final CHART_LINE_WIDTH:F

.field private final CHART_TEXT_COLOR:I

.field private final CHART_TEXT_SIZE:F

.field private final CHART_TYPEFACE:Landroid/graphics/Typeface;

.field private activity:Landroid/app/Activity;

.field private baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

.field baseCurrencyText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d021e
    .end annotation
.end field

.field private baseCurrencyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected bus:Lcom/squareup/otto/Bus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field currencyBitcoin:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0216
    .end annotation
.end field

.field currencyEther:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0217
    .end annotation
.end field

.field gradient:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0233
    .end annotation
.end field

.field private mBTCCachedResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/coinbase/android/pricechart/PriceChartFragment$Period;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeScope:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0222
    .end annotation
.end field

.field mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00f0
    .end annotation
.end field

.field private mCurrency:Lorg/joda/money/CurrencyUnit;

.field private mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

.field mCurrentPrice:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d021d
    .end annotation
.end field

.field private mDates:[Lorg/joda/time/DateTime;

.field private mETHCachedResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/coinbase/android/pricechart/PriceChartFragment$Period;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;>;"
        }
    .end annotation
.end field

.field mFailure:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0232
    .end annotation
.end field

.field private mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

.field mHighlightedDate:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0227
    .end annotation
.end field

.field mHighlightedPrice:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0226
    .end annotation
.end field

.field mHighlightedPriceCurrencySymbol:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0225
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mPriceChange:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0221
    .end annotation
.end field

.field mPriceChangeCurrencySymbol:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0220
    .end annotation
.end field

.field mPriceCurrencySymbol:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d021c
    .end annotation
.end field

.field mPriceHighlightSection:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0223
    .end annotation
.end field

.field mPriceSection:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0219
    .end annotation
.end field

.field mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0231
    .end annotation
.end field

.field private mRangeViews:[Landroid/widget/TextView;

.field mYLabel0:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0236
    .end annotation
.end field

.field mYLabel1:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0237
    .end annotation
.end field

.field mYLabel2:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0238
    .end annotation
.end field

.field mYLabels:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0234
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->TAG:Ljava/lang/String;

    .line 489
    const/high16 v0, 0x41a00000    # 20.0f

    sput v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_PADDING_PERCENTAGE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 78
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 286
    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    .line 290
    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mBTCCachedResults:Ljava/util/Map;

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mETHCachedResults:Ljava/util/Map;

    .line 490
    const/16 v0, 0x23

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_LINE_COLOR:I

    .line 491
    const/16 v0, 0x82

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TEXT_COLOR:I

    .line 492
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_LINE_WIDTH:F

    .line 493
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TEXT_SIZE:F

    .line 494
    const-string v0, "Roboto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/pricechart/PriceChartFragment;)[Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mRangeViews:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;
    .param p1, "x1"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->loadCharts(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lorg/joda/money/CurrencyUnit;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/pricechart/PriceChartFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrencyViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;)Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;
    .param p1, "x1"    # Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coinbase/android/pricechart/PriceChartFragment;Landroid/view/View;Ljava/lang/String;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->performAnimation(Landroid/view/View;Ljava/lang/String;FZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->sample(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    .locals 5
    .param p2, "type"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;",
            "Lcom/coinbase/android/pricechart/PriceChartFragment$Period;",
            ")V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "prices":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/priceCharts/Price;>;"
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->ALL:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->YEAR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->MONTH:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    if-ne p2, v0, :cond_1

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    if-ne v0, v1, :cond_2

    .line 704
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mBTCCachedResults:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-virtual {v1}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v2}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/coinbase/android/pricechart/PriceChartFragment$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/coinbase/android/pricechart/PriceChartFragment$4;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getSpotPrice(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 778
    invoke-direct {p0, p2, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->setChartData(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;Ljava/util/List;)V

    .line 779
    return-void

    .line 706
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mETHCachedResults:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private determineCurrency()V
    .locals 5

    .prologue
    .line 816
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 818
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "account_native_currency"

    const/4 v4, 0x0

    .line 819
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "currency":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 821
    invoke-static {v0}, Lorg/joda/money/CurrencyUnit;->of(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v1

    .line 826
    .local v1, "unit":Lorg/joda/money/CurrencyUnit;
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v2, v1}, Lorg/joda/money/CurrencyUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 827
    :cond_0
    invoke-virtual {p0, v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->setCurrency(Lorg/joda/money/CurrencyUnit;)V

    .line 830
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->loadCharts(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    .line 837
    .end local v0    # "currency":Ljava/lang/String;
    .end local v1    # "unit":Lorg/joda/money/CurrencyUnit;
    :cond_2
    :goto_1
    return-void

    .line 823
    .restart local v0    # "currency":Ljava/lang/String;
    :cond_3
    sget-object v1, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    .restart local v1    # "unit":Lorg/joda/money/CurrencyUnit;
    goto :goto_0

    .line 831
    .end local v0    # "currency":Ljava/lang/String;
    .end local v1    # "unit":Lorg/joda/money/CurrencyUnit;
    :cond_4
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 833
    new-instance v2, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    .line 834
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    invoke-virtual {v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->execute()V

    goto :goto_1
.end method

.method private formatYLabel(F)Ljava/lang/String;
    .locals 5
    .param p1, "amount"    # F

    .prologue
    .line 806
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    float-to-double v2, p1

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v1, v2, v3, v4}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;DLjava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v0

    .line 807
    .local v0, "money":Lorg/joda/money/Money;
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getChartsPrices()V
    .locals 5

    .prologue
    .line 641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 642
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "period"

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-virtual {v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-virtual {v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    .line 644
    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/pricechart/PriceChartFragment$3;

    invoke-direct {v4, p0}, Lcom/coinbase/android/pricechart/PriceChartFragment$3;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;)V

    .line 643
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPriceChart(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 679
    return-void
.end method

.method private handleChartMotionEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 380
    .local v0, "isTouchDown":Z
    :goto_0
    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceSection:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    move v3, v1

    :goto_1
    invoke-direct {p0, v4, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->showPriceSection(Landroid/view/View;Z)V

    .line 381
    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceHighlightSection:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->showPriceSection(Landroid/view/View;Z)V

    .line 382
    if-nez v0, :cond_4

    move v3, v1

    :goto_2
    invoke-direct {p0, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->showLeftLabels(Z)V

    .line 383
    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v3}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 385
    .end local v0    # "isTouchDown":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 378
    goto :goto_0

    .restart local v0    # "isTouchDown":Z
    :cond_3
    move v3, v2

    .line 380
    goto :goto_1

    :cond_4
    move v3, v2

    .line 382
    goto :goto_2

    :cond_5
    move v1, v2

    .line 383
    goto :goto_3
.end method

.method private loadCharts(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    .locals 6
    .param p1, "period"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x8

    .line 422
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 424
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    if-nez v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    if-nez v2, :cond_2

    .line 430
    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    .line 431
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mGetUserCurrencyTask:Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;

    invoke-virtual {v1}, Lcom/coinbase/android/pricechart/PriceChartFragment$GetUserCurrencyTask;->execute()V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mFailure:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    sget-object v3, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    if-ne v2, v3, :cond_3

    .line 439
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mBTCCachedResults:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 441
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mBTCCachedResults:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    .line 442
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v1, v5}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mETHCachedResults:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mETHCachedResults:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    .line 449
    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v1, v5}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_4
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setVisibility(I)V

    .line 455
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mProgressBar:Lcom/coinbase/android/ui/MaterialProgressBar;

    invoke-virtual {v2, v1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setVisibility(I)V

    .line 456
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabel0:Landroid/widget/TextView;

    aput-object v3, v2, v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabel1:Landroid/widget/TextView;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabel2:Landroid/widget/TextView;

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v0, v2, v1

    .line 457
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    .end local v0    # "label":Landroid/widget/TextView;
    :cond_5
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getChartsPrices()V

    goto :goto_0
.end method

.method private performAnimation(Landroid/view/View;Ljava/lang/String;FZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # F
    .param p4, "animated"    # Z

    .prologue
    .line 398
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 399
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p4, :cond_0

    const-wide/16 v2, 0xfa

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 400
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 401
    return-void

    .line 399
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private prepareXAxis(Lcom/coinbase/android/pricechart/ZeroMarginLineChart;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;[Lorg/joda/time/DateTime;)V
    .locals 17
    .param p1, "chart"    # Lcom/coinbase/android/pricechart/ZeroMarginLineChart;
    .param p2, "period"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .param p3, "dates"    # [Lorg/joda/time/DateTime;

    .prologue
    .line 598
    invoke-virtual/range {p1 .. p1}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v14

    .line 599
    .local v14, "xAxis":Lcom/github/mikephil/charting/components/XAxis;
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 600
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 601
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 602
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 603
    sget-object v15, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 604
    const/high16 v15, 0x40a00000    # 5.0f

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setYOffset(F)V

    .line 605
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0068

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 606
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineWidth(F)V

    .line 607
    move-object/from16 v0, p0

    iget v15, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TEXT_COLOR:I

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 608
    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setTextSize(F)V

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setTypeface(Landroid/graphics/Typeface;)V

    .line 611
    new-instance v15, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$DateValueFormatter;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;[Lorg/joda/time/DateTime;)V

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;)V

    .line 614
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 615
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 616
    .local v3, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 617
    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual {v7, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 619
    const-string v12, "EEE"

    .line 620
    .local v12, "text":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v12, v15, v0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v16

    mul-int/lit8 v16, v16, 0x7

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/utils/Utils;->getPixels(Landroid/content/Context;I)I

    move-result v13

    .line 623
    .local v13, "weekdayStringWidthTotal":I
    const-string v9, "E"

    .line 624
    .local v9, "singleChar":Ljava/lang/String;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 625
    .local v8, "singleBounds":Landroid/graphics/Rect;
    const/4 v15, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v9, v15, v0, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/coinbase/android/utils/Utils;->getPixels(Landroid/content/Context;I)I

    move-result v10

    .line 628
    .local v10, "singleCharWidth":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 629
    .local v5, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 630
    .local v11, "size":Landroid/graphics/Point;
    invoke-virtual {v5, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 631
    iget v15, v11, Landroid/graphics/Point;->x:I

    sub-int v6, v15, v13

    .line 633
    .local v6, "leftOverSpace":I
    div-int v15, v6, v10

    div-int/lit8 v4, v15, 0x6

    .line 635
    .local v4, "charsBetweenEachLabel":I
    invoke-virtual {v14, v4}, Lcom/github/mikephil/charting/components/XAxis;->setSpaceBetweenLabels(I)V

    .line 637
    return-void
.end method

.method private prepareYAxis(Lcom/coinbase/android/pricechart/ZeroMarginLineChart;)V
    .locals 7
    .param p1, "chart"    # Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 571
    invoke-virtual {p1}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 572
    .local v1, "leftAxis":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 573
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 574
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setDrawLabels(Z)V

    .line 575
    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 576
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->INSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    .line 577
    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setXOffset(F)V

    .line 578
    new-instance v3, Lcom/coinbase/android/pricechart/PriceChartFragment$PriceValueFormatter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/coinbase/android/pricechart/PriceChartFragment$PriceValueFormatter;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment$1;)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/YAxisValueFormatter;)V

    .line 580
    iget v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_LINE_COLOR:I

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisLineColor(I)V

    .line 581
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisLineWidth(F)V

    .line 582
    iget v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_LINE_COLOR:I

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 583
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/YAxis;->setGridLineWidth(F)V

    .line 584
    sget v3, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_PADDING_PERCENTAGE:F

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceTop(F)V

    .line 585
    sget v3, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_PADDING_PERCENTAGE:F

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceBottom(F)V

    .line 586
    iget v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TEXT_COLOR:I

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 587
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTextSize(F)V

    .line 588
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 589
    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_TYPEFACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setTypeface(Landroid/graphics/Typeface;)V

    .line 592
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x50

    invoke-static {v3, v4}, Lcom/coinbase/android/utils/Utils;->getPixels(Landroid/content/Context;I)I

    move-result v0

    .line 593
    .local v0, "gapSize":I
    invoke-virtual {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x1388

    invoke-static {v3, v4}, Lcom/coinbase/android/utils/Utils;->getPixels(Landroid/content/Context;I)I

    move-result v2

    .line 594
    .local v2, "lineLength":I
    int-to-float v3, v2

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-virtual {v1, v3, v4, v5}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    .line 595
    return-void
.end method

.method private sample(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p2, "resultSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/priceCharts/Price;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 683
    .local v1, "dataSize":I
    div-int v4, v1, p2

    .line 685
    .local v4, "stride":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/priceCharts/Price;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 687
    if-ne v0, v4, :cond_0

    .line 688
    const/4 v0, 0x0

    .line 689
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 695
    :cond_1
    return-object v3
.end method

.method private setChartData(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;Ljava/util/List;)V
    .locals 11
    .param p1, "period"    # Lcom/coinbase/android/pricechart/PriceChartFragment$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coinbase/android/pricechart/PriceChartFragment$Period;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "prices":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/priceCharts/Price;>;"
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setDrawGridBackground(Z)V

    .line 499
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setDescription(Ljava/lang/String;)V

    .line 501
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setTouchEnabled(Z)V

    .line 502
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setHighlightPerTapEnabled(Z)V

    .line 503
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setHighlightPerDragEnabled(Z)V

    .line 504
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9, p0}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 505
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9, p0}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 506
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setDragEnabled(Z)V

    .line 507
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setScaleEnabled(Z)V

    .line 508
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setPinchZoom(Z)V

    .line 509
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setDoubleTapToZoomEnabled(Z)V

    .line 510
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 512
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [Lorg/joda/time/DateTime;

    .line 513
    .local v2, "dates":[Lorg/joda/time/DateTime;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v2

    if-ge v3, v9, :cond_0

    .line 514
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coinbase/api/internal/models/priceCharts/Price;

    invoke-virtual {v9}, Lcom/coinbase/api/internal/models/priceCharts/Price;->getTime()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/coinbase/android/utils/Utils;->getDateTimeFrom(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v9

    aput-object v9, v2, v3

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 516
    :cond_0
    iput-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mDates:[Lorg/joda/time/DateTime;

    .line 519
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-direct {p0, v9}, Lcom/coinbase/android/pricechart/PriceChartFragment;->prepareYAxis(Lcom/coinbase/android/pricechart/ZeroMarginLineChart;)V

    .line 520
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-direct {p0, v9, p1, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment;->prepareXAxis(Lcom/coinbase/android/pricechart/ZeroMarginLineChart;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;[Lorg/joda/time/DateTime;)V

    .line 522
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 523
    .local v5, "pickedSize":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v7, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 525
    const-string v9, "lol"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 528
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v8, "yVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    .line 530
    new-instance v10, Lcom/github/mikephil/charting/data/Entry;

    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coinbase/api/internal/models/priceCharts/Price;

    invoke-virtual {v9}, Lcom/coinbase/api/internal/models/priceCharts/Price;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-direct {v10, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 533
    :cond_2
    new-instance v6, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 534
    .local v6, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 535
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 536
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 537
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 538
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 539
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 540
    const/16 v9, 0x13

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 541
    const/4 v9, -0x1

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 542
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 543
    new-instance v9, Lcom/coinbase/android/pricechart/PriceChartFragment$2;

    invoke-direct {v9, p0}, Lcom/coinbase/android/pricechart/PriceChartFragment$2;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;)V

    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillFormatter(Lcom/github/mikephil/charting/formatter/FillFormatter;)V

    .line 550
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 551
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/LineDataSet;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0, v7, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 554
    .local v0, "data":Lcom/github/mikephil/charting/data/LineData;
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9, v0}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 557
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    .line 558
    .local v4, "l":Lcom/github/mikephil/charting/components/Legend;
    sget-object v9, Lcom/github/mikephil/charting/components/Legend$LegendForm;->LINE:Lcom/github/mikephil/charting/components/Legend$LegendForm;

    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/components/Legend;->setForm(Lcom/github/mikephil/charting/components/Legend$LegendForm;)V

    .line 559
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 561
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->updateYLabels()V

    .line 563
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->invalidate()V

    .line 565
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v9}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_3

    .line 566
    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setVisibility(I)V

    .line 568
    :cond_3
    return-void
.end method

.method private showLeftLabels(Z)V
    .locals 5
    .param p1, "shouldShow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 393
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabels:Landroid/widget/LinearLayout;

    const-string v3, "translationX"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->performAnimation(Landroid/view/View;Ljava/lang/String;FZ)V

    .line 394
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->gradient:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 395
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabels:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private showPriceSection(Landroid/view/View;Z)V
    .locals 4
    .param p1, "priceSectionView"    # Landroid/view/View;
    .param p2, "shouldShow"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 388
    const-string v2, "translationY"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->performAnimation(Landroid/view/View;Ljava/lang/String;FZ)V

    .line 389
    if-eqz p2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v3, v0}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 390
    return-void

    .line 388
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private updatePriceSections(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 9
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;

    .prologue
    .line 840
    iget-object v5, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    float-to-double v6, v6

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v7, v8}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;DLjava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v2

    .line 841
    .local v2, "highlightedPrice":Lorg/joda/money/Money;
    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v6, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 843
    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 841
    invoke-static {v2, v5, v6}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "priceString":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mHighlightedPrice:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 846
    iget-object v5, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 847
    .local v4, "timeFormat":Ljava/text/DateFormat;
    iget-object v5, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 849
    .local v1, "dateFormat":Ljava/text/DateFormat;
    iget-object v5, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mDates:[Lorg/joda/time/DateTime;

    iget-object v6, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mDates:[Lorg/joda/time/DateTime;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    sub-int/2addr v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v0

    .line 850
    .local v0, "date":Ljava/util/Date;
    iget-object v5, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mHighlightedDate:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    return-void
.end method

.method private updateYLabels()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 782
    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v8}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v8

    if-nez v8, :cond_1

    .line 803
    :cond_0
    return-void

    .line 786
    :cond_1
    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v8}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getYMin()F

    move-result v6

    .local v6, "yMin":F
    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v8}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getYMax()F

    move-result v5

    .line 789
    .local v5, "yMax":F
    sub-float v8, v5, v6

    sget v9, Lcom/coinbase/android/pricechart/PriceChartFragment;->CHART_PADDING_PERCENTAGE:F

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    mul-float v0, v8, v9

    .line 790
    .local v0, "extra":F
    sub-float/2addr v6, v0

    .line 791
    add-float/2addr v5, v0

    .line 792
    sub-float v3, v5, v6

    .line 794
    .local v3, "range":F
    const/high16 v4, 0x3e800000    # 0.25f

    .line 795
    .local v4, "stepPercentage":F
    move v7, v4

    .line 797
    .local v7, "yStep":F
    const/4 v8, 0x3

    new-array v2, v8, [Landroid/widget/TextView;

    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabel2:Landroid/widget/TextView;

    aput-object v8, v2, v11

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabel1:Landroid/widget/TextView;

    aput-object v9, v2, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mYLabel0:Landroid/widget/TextView;

    aput-object v9, v2, v8

    .line 798
    .local v2, "labels":[Landroid/widget/TextView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_0

    .line 799
    aget-object v8, v2, v1

    mul-float v9, v3, v7

    add-float/2addr v9, v6

    invoke-direct {p0, v9}, Lcom/coinbase/android/pricechart/PriceChartFragment;->formatYLabel(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    add-float/2addr v7, v4

    .line 801
    aget-object v8, v2, v1

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 798
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 417
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onAttach(Landroid/app/Activity;)V

    .line 418
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    .line 419
    return-void
.end method

.method public onChartDoubleTapped(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 896
    return-void
.end method

.method public onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 906
    return-void
.end method

.method public onChartGestureEnd(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 2
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "lastPerformedGesture"    # Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 882
    invoke-direct {p0, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->handleChartMotionEvent(Landroid/view/MotionEvent;)V

    .line 885
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->bus:Lcom/squareup/otto/Bus;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 886
    return-void
.end method

.method public onChartGestureStart(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 5
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "lastPerformedGesture"    # Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .prologue
    .line 870
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    .line 871
    .local v1, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v2, v1}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->highlightValue(Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 872
    iget-object v2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v2}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/data/LineData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 873
    .local v0, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-direct {p0, v0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->updatePriceSections(Lcom/github/mikephil/charting/data/Entry;)V

    .line 875
    invoke-direct {p0, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->handleChartMotionEvent(Landroid/view/MotionEvent;)V

    .line 876
    return-void
.end method

.method public onChartLongPressed(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 891
    return-void
.end method

.method public onChartScale(Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F

    .prologue
    .line 911
    return-void
.end method

.method public onChartSingleTapped(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 901
    return-void
.end method

.method public onChartTranslate(Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "dX"    # F
    .param p3, "dY"    # F

    .prologue
    .line 916
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 864
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 411
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 412
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->determineCurrency()V

    .line 413
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->bus:Lcom/squareup/otto/Bus;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 858
    invoke-direct {p0, p1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->updatePriceSections(Lcom/github/mikephil/charting/data/Entry;)V

    .line 859
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0d022a

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v0, v3}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setHardwareAccelerationEnabled(Z)V

    .line 333
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->HOUR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v0, 0x7f0d022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->DAY:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v0, 0x7f0d022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->WEEK:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v0, 0x7f0d022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->MONTH:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v0, 0x7f0d022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->YEAR:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v0, 0x7f0d022f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->ALL:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$RangeOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/TextView;

    .line 340
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    const v0, 0x7f0d022b

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    const v0, 0x7f0d022c

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    const/4 v2, 0x3

    const v0, 0x7f0d022d

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    const v0, 0x7f0d022e

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    const/4 v2, 0x5

    const v0, 0x7f0d022f

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mRangeViews:[Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mRangeViews:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 349
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->DAY:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    .line 351
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChart:Lcom/coinbase/android/pricechart/ZeroMarginLineChart;

    invoke-virtual {v0, v6}, Lcom/coinbase/android/pricechart/ZeroMarginLineChart;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceSection:Landroid/widget/RelativeLayout;

    const-string v1, "translationY"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/coinbase/android/pricechart/PriceChartFragment;->performAnimation(Landroid/view/View;Ljava/lang/String;FZ)V

    .line 354
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceSection:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceHighlightSection:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/pricechart/PriceChartFragment$1;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 365
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->currencyBitcoin:Landroid/widget/TextView;

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->currencyEther:Landroid/widget/TextView;

    new-instance v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;

    sget-object v2, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->ETH:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    invoke-direct {v1, p0, v2}, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrencyOnClickListener;-><init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-array v0, v5, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->currencyBitcoin:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->currencyEther:Landroid/widget/TextView;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrencyViews:Ljava/util/List;

    .line 369
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrencyViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 370
    sget-object v0, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    iput-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .line 372
    return-void
.end method

.method protected reloadCharts()V
    .locals 0

    .prologue
    .line 811
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->determineCurrency()V

    .line 812
    invoke-direct {p0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->updateYLabels()V

    .line 813
    return-void
.end method

.method public setBaseCurrency(Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;)V
    .locals 2
    .param p1, "currency"    # Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    .line 480
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {p0, v0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->loadCharts(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    .line 482
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrency:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    sget-object v1, Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;->BTC:Lcom/coinbase/android/pricechart/PriceChartFragment$BaseCurrency;

    if-ne v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrencyText:Landroid/widget/TextView;

    const v1, 0x7f070093

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->baseCurrencyText:Landroid/widget/TextView;

    const v1, 0x7f0702db

    invoke-virtual {p0, v1}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCurrency(Lorg/joda/money/CurrencyUnit;)V
    .locals 2
    .param p1, "unit"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;

    .line 466
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceCurrencySymbol:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceChangeCurrencySymbol:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mHighlightedPriceCurrencySymbol:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceChange:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPrice:Landroid/widget/TextView;

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPeriod:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {p0, v0}, Lcom/coinbase/android/pricechart/PriceChartFragment;->loadCharts(Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V

    .line 476
    :cond_0
    return-void
.end method
