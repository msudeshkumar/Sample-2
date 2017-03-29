.class public Lcom/coinbase/android/transfers/TransferAmountFragment;
.super Lroboguice/fragment/RoboFragment;
.source "TransferAmountFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;,
        Lcom/coinbase/android/transfers/TransferAmountFragment$TransferFragmentListener;
    }
.end annotation


# instance fields
.field continueButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0292
    .end annotation
.end field

.field private enteredValue:Ljava/lang/String;

.field private isNativePrimary:Z

.field private keyboardClickListener:Landroid/view/View$OnClickListener;

.field mErrorView:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0290
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mNativeExchangeRateTime:J

.field private mNativeExchangeRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeExchangeTask:Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

.field private mPrimaryAmount:Lorg/joda/money/BigMoney;

.field private mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

.field private mSecondaryAmount:Lorg/joda/money/BigMoney;

.field private mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

.field protected mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

.field private mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

.field primaryAmountView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d028e
    .end annotation
.end field

.field secondaryAmountView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d028f
    .end annotation
.end field

.field switchButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d001c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->isNativePrimary:Z

    .line 253
    new-instance v0, Lcom/coinbase/android/transfers/TransferAmountFragment$3;

    invoke-direct {v0, p0}, Lcom/coinbase/android/transfers/TransferAmountFragment$3;-><init>(Lcom/coinbase/android/transfers/TransferAmountFragment;)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->keyboardClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/coinbase/android/transfers/TransferAmountFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeRates:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coinbase/android/transfers/TransferAmountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->onExchangeRatesRefreshed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/CurrencyUnit;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coinbase/android/transfers/TransferAmountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->switchAmounts()V

    return-void
.end method

.method static synthetic access$1300(Lcom/coinbase/android/transfers/TransferAmountFragment;C)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;
    .param p1, "x1"    # C

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/TransferAmountFragment;->updateEnteredValue(C)V

    return-void
.end method

.method static synthetic access$1400(Lcom/coinbase/android/transfers/TransferAmountFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->updateViews()V

    return-void
.end method

.method static synthetic access$202(Lcom/coinbase/android/transfers/TransferAmountFragment;Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;)Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;
    .param p1, "x1"    # Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeTask:Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    return-object v0
.end method

.method static synthetic access$400(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->isNativePrimary:Z

    return v0
.end method

.method static synthetic access$500(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsSecondary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/BigMoney;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    return-object v0
.end method

.method static synthetic access$700(Lcom/coinbase/android/transfers/TransferAmountFragment;)Lorg/joda/money/CurrencyUnit;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method static synthetic access$800(Lcom/coinbase/android/transfers/TransferAmountFragment;Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;
    .param p1, "x1"    # Lorg/joda/money/BigMoney;
    .param p2, "x2"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getBTCAmount(Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/coinbase/android/transfers/TransferAmountFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/transfers/TransferAmountFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsPrimary()Z

    move-result v0

    return v0
.end method

.method private formatCurrencyAmount(Ljava/math/BigDecimal;ZII)Ljava/lang/String;
    .locals 4
    .param p1, "balanceNumber"    # Ljava/math/BigDecimal;
    .param p2, "ignoreSign"    # Z
    .param p3, "maxFractionDigits"    # I
    .param p4, "minFractionDigits"    # I

    .prologue
    const/4 v3, -0x1

    .line 467
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 468
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 469
    .local v1, "nf":Ljava/text/NumberFormat;
    invoke-virtual {v1, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 470
    invoke-virtual {v1, p4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 472
    if-eqz p2, :cond_0

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 473
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 476
    :cond_0
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getBTCAmount(Lorg/joda/money/BigMoney;Lorg/joda/money/CurrencyUnit;)Lorg/joda/money/BigMoney;
    .locals 3
    .param p1, "amount"    # Lorg/joda/money/BigMoney;
    .param p2, "currencyUnit"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 241
    .line 242
    invoke-virtual {p2}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/joda/money/BigMoney;->withScale(I)Lorg/joda/money/BigMoney;

    move-result-object v0

    sget-object v1, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 243
    invoke-virtual {v0, v1, v2}, Lorg/joda/money/BigMoney;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    return-object v0
.end method

.method private getExchangeRateKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_to_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v1}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrimaryText()Landroid/text/SpannableStringBuilder;
    .locals 15

    .prologue
    const v14, 0x7f0c006d

    const/16 v13, 0x21

    const/4 v9, 0x0

    const/16 v12, 0x2e

    .line 380
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v10}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v6

    .line 382
    .local v6, "maxFractionDigits":I
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v10}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f070097

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 383
    .local v4, "isBTC":Z
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v10}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0702d9

    invoke-virtual {p0, v11}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 385
    .local v5, "isETH":Z
    if-nez v4, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    const/4 v7, 0x2

    .line 388
    .local v7, "minFractionDigits":I
    :goto_0
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 389
    .local v3, "dotIndex":I
    if-ltz v3, :cond_4

    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/lit8 v8, v10, -0x1

    .line 390
    .local v8, "userEnteredFractionDigits":I
    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 392
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    invoke-virtual {v10}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    .line 393
    .local v0, "amount":Ljava/math/BigDecimal;
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_1

    .line 394
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 395
    const/4 v7, 0x0

    .line 398
    :cond_1
    const/4 v10, 0x1

    invoke-direct {p0, v0, v10, v6, v7}, Lcom/coinbase/android/transfers/TransferAmountFragment;->formatCurrencyAmount(Ljava/math/BigDecimal;ZII)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "amountString":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 403
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 404
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 405
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    .line 404
    invoke-virtual {v2, v10, v9, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 420
    :cond_2
    :goto_2
    if-eqz v4, :cond_8

    .line 421
    const-string v9, "btc"

    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v10}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 422
    const-string v9, " BTC"

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 433
    :goto_3
    return-object v2

    .line 385
    .end local v0    # "amount":Ljava/math/BigDecimal;
    .end local v1    # "amountString":Ljava/lang/String;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "dotIndex":I
    .end local v7    # "minFractionDigits":I
    .end local v8    # "userEnteredFractionDigits":I
    :cond_3
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 386
    invoke-virtual {v10}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v7

    goto :goto_0

    .restart local v3    # "dotIndex":I
    .restart local v7    # "minFractionDigits":I
    :cond_4
    move v8, v9

    .line 389
    goto :goto_1

    .line 409
    .restart local v0    # "amount":Ljava/math/BigDecimal;
    .restart local v1    # "amountString":Ljava/lang/String;
    .restart local v2    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v8    # "userEnteredFractionDigits":I
    :cond_5
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 410
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 411
    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    .line 410
    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 415
    :cond_6
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_2

    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    iget-object v11, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    if-ne v10, v11, :cond_2

    .line 416
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 417
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    .line 416
    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 425
    :cond_7
    const-string v9, " bits"

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 427
    :cond_8
    if-eqz v5, :cond_9

    .line 428
    const-string v9, " ETH"

    invoke-virtual {v2, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 430
    :cond_9
    iget-object v10, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/joda/money/CurrencyUnit;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3
.end method

.method private getSecondaryText()Landroid/text/SpannableStringBuilder;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 437
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v3

    .line 439
    .local v3, "maxFractionDigits":I
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070097

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 440
    .local v1, "isBTC":Z
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0702d9

    invoke-virtual {p0, v6}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 442
    .local v2, "isETH":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x2

    .line 445
    .local v4, "minFractionDigits":I
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 446
    invoke-virtual {v5}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6, v3, v4}, Lcom/coinbase/android/transfers/TransferAmountFragment;->formatCurrencyAmount(Ljava/math/BigDecimal;ZII)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 449
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    if-eqz v1, :cond_3

    .line 450
    const-string v5, "btc"

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 451
    const-string v5, " BTC"

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 461
    :goto_1
    return-object v0

    .line 442
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v4    # "minFractionDigits":I
    :cond_1
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 443
    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v4

    goto :goto_0

    .line 454
    .restart local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v4    # "minFractionDigits":I
    :cond_2
    const-string v5, " bits"

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 456
    :cond_3
    if-eqz v2, :cond_4

    .line 457
    const-string v5, " ETH"

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 459
    :cond_4
    const-string v5, " "

    invoke-virtual {v0, v7, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v6}, Lorg/joda/money/CurrencyUnit;->getSymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method private initButtonListeners()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->continueButton:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/transfers/TransferAmountFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/transfers/TransferAmountFragment$1;-><init>(Lcom/coinbase/android/transfers/TransferAmountFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->switchButton:Landroid/view/View;

    new-instance v1, Lcom/coinbase/android/transfers/TransferAmountFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/transfers/TransferAmountFragment$2;-><init>(Lcom/coinbase/android/transfers/TransferAmountFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

.method private initKeyboardListeners(Landroid/view/View;)V
    .locals 6
    .param p1, "baseView"    # Landroid/view/View;

    .prologue
    .line 247
    sget-object v3, Lcom/coinbase/android/utils/KeyboardUtils;->KEY_IDS:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, v3, v2

    .line 248
    .local v0, "id":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 249
    .local v1, "v":Landroid/view/View;
    iget-object v5, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->keyboardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "id":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private isBitsPrimary()Z
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bits"

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 481
    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBitsSecondary()Z
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "btc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bits"

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 486
    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)Lcom/coinbase/android/transfers/TransferAmountFragment;
    .locals 5
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p1, "type"    # Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .prologue
    .line 109
    new-instance v1, Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/TransferAmountFragment;-><init>()V

    .line 110
    .local v1, "f":Lcom/coinbase/android/transfers/TransferAmountFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 112
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "TransferActivity_Account"

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "TransferActivity_Transfer_Type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    return-object v1
.end method

.method public static newInstance(Ljava/math/BigDecimal;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;)Lcom/coinbase/android/transfers/TransferAmountFragment;
    .locals 5
    .param p0, "amount"    # Ljava/math/BigDecimal;
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p2, "type"    # Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .prologue
    .line 119
    new-instance v1, Lcom/coinbase/android/transfers/TransferAmountFragment;

    invoke-direct {v1}, Lcom/coinbase/android/transfers/TransferAmountFragment;-><init>()V

    .line 120
    .local v1, "f":Lcom/coinbase/android/transfers/TransferAmountFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 122
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "TransferActivity_Amount"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 123
    const-string v3, "TransferActivity_Account"

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "TransferActivity_Transfer_Type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 125
    invoke-virtual {v1, v0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    return-object v1
.end method

.method private onExchangeRatesRefreshed()V
    .locals 4

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsPrimary()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 270
    invoke-virtual {v2}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/joda/money/BigMoney;->withScale(I)Lorg/joda/money/BigMoney;

    move-result-object v1

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 271
    invoke-virtual {v1, v2, v3}, Lorg/joda/money/BigMoney;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 274
    .local v0, "btcEntered":Lorg/joda/money/BigMoney;
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeRates:Ljava/util/Map;

    .line 275
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getExchangeRateKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    .line 274
    invoke-virtual {v0, v2, v1}, Lorg/joda/money/BigMoney;->convertedTo(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 277
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsSecondary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    sget-object v2, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lorg/joda/money/BigMoney;->multipliedBy(Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->updateViews()V

    .line 283
    .end local v0    # "btcEntered":Lorg/joda/money/BigMoney;
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    goto :goto_0
.end method

.method private parseEnteredText()D
    .locals 4

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 371
    :goto_0
    return-wide v2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private refreshExchangeRates()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeTask:Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;-><init>(Lcom/coinbase/android/transfers/TransferAmountFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeTask:Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    .line 207
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeTask:Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;

    invoke-virtual {v0}, Lcom/coinbase/android/transfers/TransferAmountFragment$RefreshExchangeRateTask;->execute()V

    .line 209
    :cond_0
    return-void
.end method

.method private switchAmounts()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 286
    iget-boolean v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->isNativePrimary:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->isNativePrimary:Z

    .line 289
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v2, v4, v5}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    .line 290
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v2, v4, v5}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 293
    iget-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 294
    .local v1, "tmpCurrency":Lorg/joda/money/CurrencyUnit;
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 295
    iput-object v1, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 298
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    .line 299
    .local v0, "tmpAmount":Lorg/joda/money/BigMoney;
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    .line 300
    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 303
    const-string v2, ""

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->updateViews()V

    .line 307
    return-void

    .line 286
    .end local v0    # "tmpAmount":Lorg/joda/money/BigMoney;
    .end local v1    # "tmpCurrency":Lorg/joda/money/CurrencyUnit;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateEnteredValue(C)V
    .locals 7
    .param p1, "keyStroke"    # C

    .prologue
    const/16 v6, 0x2e

    .line 310
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v2}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v1

    .line 311
    .local v1, "maxFractionDigits":I
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    const/4 v1, 0x2

    .line 316
    :cond_0
    const/16 v2, 0x3c

    if-ne p1, v2, :cond_3

    .line 317
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    .line 350
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->parseEnteredText()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    .line 352
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsPrimary()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 354
    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->getDefaultFractionDigits()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/joda/money/BigMoney;->withScale(I)Lorg/joda/money/BigMoney;

    move-result-object v2

    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 355
    invoke-virtual {v2, v3, v4}, Lorg/joda/money/BigMoney;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v0

    .line 358
    .local v0, "btcEntered":Lorg/joda/money/BigMoney;
    :goto_1
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeRates:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 359
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mNativeExchangeRates:Ljava/util/Map;

    .line 360
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getExchangeRateKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    .line 359
    invoke-virtual {v0, v3, v2}, Lorg/joda/money/BigMoney;->convertedTo(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 361
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->isBitsSecondary()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    sget-object v3, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Lorg/joda/money/BigMoney;->multipliedBy(Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 365
    .end local v0    # "btcEntered":Lorg/joda/money/BigMoney;
    :cond_2
    return-void

    .line 322
    :cond_3
    if-ne p1, v6, :cond_4

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    .line 327
    :cond_4
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v2, v1, :cond_2

    .line 332
    :cond_5
    if-ne p1, v6, :cond_6

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 337
    :cond_6
    const/16 v2, 0x30

    if-ne p1, v2, :cond_7

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_7

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->parseEnteredText()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 342
    :cond_7
    if-eq p1, v6, :cond_8

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_8

    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    .line 348
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->enteredValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    goto/16 :goto_1
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->primaryAmountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getPrimaryText()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->secondaryAmountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getSecondaryText()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->primaryAmountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getPrimaryText()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 192
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->secondaryAmountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->switchButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :goto_0
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->initButtonListeners()V

    .line 201
    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->refreshExchangeRates()V

    .line 202
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->secondaryAmountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getSecondaryText()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0702d9

    const-wide/16 v6, 0x0

    .line 131
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 134
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "TransferActivity_Account"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/account/Data;

    iput-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 135
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "TransferActivity_Transfer_Type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    iput-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    .line 141
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 142
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    .line 145
    .local v2, "nativeBalanceCurrency":Lorg/joda/money/CurrencyUnit;
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {p0, v5}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    .line 151
    .local v0, "digitalCurrency":Lorg/joda/money/CurrencyUnit;
    :goto_1
    iget-boolean v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->isNativePrimary:Z

    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 153
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 154
    .end local v2    # "nativeBalanceCurrency":Lorg/joda/money/CurrencyUnit;
    :goto_2
    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 155
    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 163
    :goto_3
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v3, v6, v7}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryAmount:Lorg/joda/money/BigMoney;

    .line 164
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    invoke-static {v3, v6, v7}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;D)Lorg/joda/money/BigMoney;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryAmount:Lorg/joda/money/BigMoney;

    .line 165
    return-void

    .line 137
    .end local v0    # "digitalCurrency":Lorg/joda/money/CurrencyUnit;
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/account/Data;

    iput-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 138
    sget-object v3, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    iput-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    goto :goto_0

    .line 148
    .restart local v2    # "nativeBalanceCurrency":Lorg/joda/money/CurrencyUnit;
    :cond_1
    const v3, 0x7f070097

    invoke-virtual {p0, v3}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    .restart local v0    # "digitalCurrency":Lorg/joda/money/CurrencyUnit;
    goto :goto_1

    .line 153
    :cond_2
    const-string v3, "USD"

    .line 154
    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    goto :goto_2

    .line 157
    :cond_3
    iput-object v0, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mPrimaryCurrency:Lorg/joda/money/CurrencyUnit;

    .line 158
    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 159
    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 160
    .end local v2    # "nativeBalanceCurrency":Lorg/joda/money/CurrencyUnit;
    :goto_4
    iput-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mSecondaryCurrency:Lorg/joda/money/CurrencyUnit;

    goto :goto_3

    .line 159
    .restart local v2    # "nativeBalanceCurrency":Lorg/joda/money/CurrencyUnit;
    :cond_4
    const-string v3, "USD"

    .line 160
    invoke-static {v3}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v2

    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 170
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->initKeyboardListeners(Landroid/view/View;)V

    .line 171
    return-object v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 176
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 177
    iget-object v2, p0, Lcom/coinbase/android/transfers/TransferAmountFragment;->mTransferType:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    sget-object v3, Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;->SEND:Lcom/coinbase/android/transfers/TransferSendFragment$TransferType;

    if-ne v2, v3, :cond_1

    const v2, 0x7f07017d

    :goto_0
    invoke-virtual {p0, v2}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/transfers/TransferAmountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 180
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void

    .line 177
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f07017b

    goto :goto_0
.end method
