.class public Lcom/coinbase/android/ui/CurrencySelectorLayout;
.super Landroid/widget/LinearLayout;
.source "CurrencySelectorLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    }
.end annotation


# static fields
.field public static USER_PREFERRED_CRYPTOCURRENCY:Ljava/lang/String;


# instance fields
.field mBitcoinCurrencyButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mEthereumCurrencyButton:Landroid/widget/Button;
    .annotation build Lbutterknife/BindView;
    .end annotation
.end field

.field private mSelectedCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-string v0, "user_preferred_cryptocurrency"

    sput-object v0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->USER_PREFERRED_CRYPTOCURRENCY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->init(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method private highlightButton(Landroid/widget/Button;Z)V
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "shouldHighlight"    # Z

    .prologue
    const v3, 0x7f02006b

    .line 126
    if-eqz p2, :cond_0

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 128
    if-eqz p2, :cond_2

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .local v0, "buildVersion":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v0    # "buildVersion":I
    :goto_1
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    .line 133
    .restart local v0    # "buildVersion":I
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 137
    .end local v0    # "buildVersion":I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const v2, 0x7f03003a

    invoke-static {p1, v2, p0}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "v":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 87
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 88
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 90
    iget-object v2, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mBitcoinCurrencyButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/ui/CurrencySelectorLayout$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/ui/CurrencySelectorLayout$1;-><init>(Lcom/coinbase/android/ui/CurrencySelectorLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v2, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mEthereumCurrencyButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/ui/CurrencySelectorLayout$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/ui/CurrencySelectorLayout$2;-><init>(Lcom/coinbase/android/ui/CurrencySelectorLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->prefs:Landroid/content/SharedPreferences;

    .line 105
    return-void
.end method


# virtual methods
.method public getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mSelectedCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    return-object v0
.end method

.method public setCurrency(Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;)V
    .locals 4
    .param p1, "currency"    # Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iput-object p1, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mSelectedCurrency:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    .line 114
    iget-object v3, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mBitcoinCurrencyButton:Landroid/widget/Button;

    sget-object v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->highlightButton(Landroid/widget/Button;Z)V

    .line 115
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mEthereumCurrencyButton:Landroid/widget/Button;

    sget-object v3, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->ETH:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne p1, v3, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->highlightButton(Landroid/widget/Button;Z)V

    .line 117
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_chosen_currency"

    .line 118
    invoke-virtual {p1}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method
