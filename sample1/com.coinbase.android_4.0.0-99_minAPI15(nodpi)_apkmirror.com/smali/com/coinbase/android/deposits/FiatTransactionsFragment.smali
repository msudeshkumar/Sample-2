.class public Lcom/coinbase/android/deposits/FiatTransactionsFragment;
.super Lroboguice/fragment/RoboFragment;
.source "FiatTransactionsFragment.java"

# interfaces
.implements Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/deposits/FiatTransactionsFragment$WithdrawConfirmationDialogFragment;,
        Lcom/coinbase/android/deposits/FiatTransactionsFragment$DepositConfirmationDialogFragment;,
        Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    }
.end annotation


# instance fields
.field protected dbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private isInForeground:Z

.field private mAccount:Lcom/coinbase/v2/models/account/Data;

.field mAmountView:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01a8
    .end annotation
.end field

.field mBankLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01a6
    .end annotation
.end field

.field mBankSpinner:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01a7
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mContent:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01a5
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;"
        }
    .end annotation
.end field

.field mQuickstartLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01aa
    .end annotation
.end field

.field mQuickstartList:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f5
    .end annotation
.end field

.field mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

.field mSetupOverlay:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f2
    .end annotation
.end field

.field mSubmitButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01a9
    .end annotation
.end field

.field private mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

.field mUnavailabilityNotice:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f6
    .end annotation
.end field

.field private paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

.field quickstartDescription:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f4
    .end annotation
.end field

.field quickstartIcon:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/v2/models/account/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object v0
.end method

.method static synthetic access$302(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->initiateDeposit()V

    return-void
.end method

.method static synthetic access$500(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->updateSetupViews()V

    return-void
.end method

.method private commitDeposit(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 5
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0700f2

    invoke-virtual {p0, v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 584
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;

    invoke-direct {v4, p0, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$9;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->commitDeposit(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 610
    return-void
.end method

.method private commitWithdraw(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 5
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0702af

    invoke-virtual {p0, v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 615
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$10;

    invoke-direct {v4, p0, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$10;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->commitWithdraw(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 641
    return-void
.end method

.method private deposit(Lorg/joda/money/Money;)V
    .locals 5
    .param p1, "amount"    # Lorg/joda/money/Money;

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0700f2

    invoke-virtual {p0, v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 503
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "amount"

    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v2, "currency"

    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v2, "payment_method"

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v2, "commit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$7;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$7;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->depositFunds(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 538
    return-void
.end method

.method private getEnteredAmount()Lorg/joda/money/Money;
    .locals 6

    .prologue
    .line 659
    iget-object v5, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAmountView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "text":Ljava/lang/String;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 661
    .local v4, "value":Ljava/math/BigDecimal;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 663
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 664
    .local v0, "amountEntered":D
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 670
    .end local v0    # "amountEntered":D
    :cond_0
    :goto_0
    sget-object v5, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    invoke-static {v5, v4}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/Money;

    move-result-object v5

    return-object v5

    .line 665
    :catch_0
    move-exception v2

    .line 666
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0
.end method

.method public static getFormattedTotal(Lcom/coinbase/v2/models/transfers/Transfer;)Ljava/lang/String;
    .locals 5
    .param p0, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v0

    .line 653
    .local v0, "amount":Lcom/coinbase/v2/models/transfers/Amount;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v1

    .line 654
    .local v1, "money":Lorg/joda/money/Money;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coinbase/android/utils/MoneyUtils;->currencyType(Ljava/lang/String;)Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    move-result-object v2

    .line 655
    .local v2, "type":Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;
    invoke-static {v1, v2}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getOverlayIcon()I
    .locals 3

    .prologue
    const v1, 0x7f02015e

    .line 334
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "country":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    const v1, 0x7f0200c1

    goto :goto_0

    .line 342
    :cond_2
    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 343
    const v1, 0x7f0200bf

    goto :goto_0

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->isAllowedPaymentMethodSepa()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    const v1, 0x7f0200bd

    goto :goto_0
.end method

.method private initiateDeposit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getEnteredAmount()Lorg/joda/money/Money;

    move-result-object v0

    .line 477
    .local v0, "amountEntered":Lorg/joda/money/Money;
    invoke-virtual {v0}, Lorg/joda/money/Money;->isNegativeOrZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0701ce

    invoke-virtual {p0, v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 498
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    if-nez v1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0701cc

    invoke-virtual {p0, v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v1, :cond_2

    .line 488
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07004c

    invoke-virtual {p0, v2}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v2, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v1, v2, :cond_3

    .line 494
    invoke-direct {p0, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->deposit(Lorg/joda/money/Money;)V

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->withdraw(Lorg/joda/money/Money;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;)Lcom/coinbase/android/deposits/FiatTransactionsFragment;
    .locals 5
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p1, "type"    # Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    .prologue
    .line 251
    new-instance v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment;

    invoke-direct {v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;-><init>()V

    .line 252
    .local v1, "f":Lcom/coinbase/android/deposits/FiatTransactionsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 254
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "DepositActivity_Account"

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "DepositActivity_Type"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 257
    return-object v1
.end method

.method private refreshData()V
    .locals 3

    .prologue
    .line 674
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v2, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->DEPOSITS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    .line 675
    invoke-virtual {v1}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, "type":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    new-instance v2, Lcom/coinbase/android/deposits/FiatTransactionsFragment$11;

    invoke-direct {v2, p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$11;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/android/quickstart/QuickstartManager;->updateQuickstartItems(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 685
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V

    .line 686
    return-void

    .line 675
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->WITHDRAWALS:Lcom/coinbase/android/quickstart/QuickstartManager$Type;

    invoke-virtual {v1}, Lcom/coinbase/android/quickstart/QuickstartManager$Type;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateSetupViews()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 448
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    invoke-virtual {v1}, Lcom/coinbase/android/quickstart/QuickstartManager;->getCachedQuickstartItems()Ljava/util/List;

    move-result-object v0

    .line 450
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mQuickstartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 473
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mQuickstartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 454
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSetupOverlay:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mUnavailabilityNotice:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mQuickstartList:Landroid/widget/ListView;

    new-instance v2, Lcom/coinbase/android/deposits/FiatTransactionsFragment$6;

    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0300a8

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$6;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboard(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private withdraw(Lorg/joda/money/Money;)V
    .locals 5
    .param p1, "amount"    # Lorg/joda/money/Money;

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0702af

    invoke-virtual {p0, v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 543
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 544
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "amount"

    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v2, "currency"

    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/money/CurrencyUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v2, "payment_method"

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v2, "commit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v2, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$8;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->withdrawFunds(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 578
    return-void
.end method


# virtual methods
.method public getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 734
    iget-boolean v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->isInForeground:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 353
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 354
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v3, :cond_1

    const-string v2, "?"

    .line 355
    .local v2, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0700f5

    .line 356
    invoke-virtual {p0, v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    :goto_1
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    .line 360
    .local v0, "a":Landroid/support/v7/app/ActionBarActivity;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 362
    .local v1, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 367
    .end local v1    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    new-instance v3, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;

    .line 368
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030095

    invoke-direct {v3, p0, v4, v5}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$3;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    .line 422
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mBankSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 423
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mBankSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$4;

    invoke-direct {v4, p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$4;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 435
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v4, Lcom/coinbase/android/deposits/FiatTransactionsFragment$5;

    invoke-direct {v4, p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$5;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v4, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mBankLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v5, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v3, v5, :cond_3

    const v3, 0x7f070150

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 444
    iget-object v4, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v5, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v3, v5, :cond_4

    const v3, 0x7f0700ef

    invoke-virtual {p0, v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 445
    return-void

    .line 354
    .end local v0    # "a":Landroid/support/v7/app/ActionBarActivity;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 356
    .restart local v2    # "title":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0702aa

    .line 357
    invoke-virtual {p0, v4}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 442
    .restart local v0    # "a":Landroid/support/v7/app/ActionBarActivity;
    :cond_3
    const v3, 0x7f070151

    goto :goto_2

    .line 444
    :cond_4
    const v3, 0x7f0702a8

    invoke-virtual {p0, v3}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public onBanksUpdated(Lcom/coinbase/android/event/BankAccountsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/BankAccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->refreshData()V

    .line 715
    return-void
.end method

.method public onBuySellMade(Lcom/coinbase/android/event/BuySellMadeEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/coinbase/android/event/BuySellMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 703
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->setHasOptionsMenu(Z)V

    .line 264
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 265
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DepositActivity_Account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/account/Data;

    iput-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    .line 266
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DepositActivity_Type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    iput-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    .line 267
    iget-object v1, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 278
    const v0, 0x7f030065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDepositWithdrawConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 2
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v0, v1, :cond_0

    .line 645
    invoke-direct {p0, p1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->commitDeposit(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-direct {p0, p1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->commitWithdraw(Lcom/coinbase/v2/models/transfers/Transfer;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onDestroy()V

    .line 273
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 696
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->isInForeground:Z

    .line 698
    return-void
.end method

.method public onPaymentMethodsUpdated(Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->refreshData()V

    .line 720
    return-void
.end method

.method public onPhoneNumbersUpdated(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 707
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->refreshData()V

    .line 709
    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/Utils;->processPhoneNumbersUpdatedEvent(Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;Landroid/content/Context;)V

    .line 710
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 690
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->isInForeground:Z

    .line 692
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 283
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->DEPOSIT:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->quickstartDescription:Landroid/widget/TextView;

    const v1, 0x7f0702e7

    invoke-virtual {p0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->quickstartIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getOverlayIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mQuickstartList:Landroid/widget/ListView;

    new-instance v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$1;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 303
    new-instance v0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;

    invoke-direct {v2, p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment$2;-><init>(Lcom/coinbase/android/deposits/FiatTransactionsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;)V

    iput-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    .line 330
    invoke-direct {p0}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->refreshData()V

    .line 331
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mType:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    sget-object v1, Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;->WITHDRAW:Lcom/coinbase/android/deposits/FiatTransactionsFragment$Type;

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->quickstartDescription:Landroid/widget/TextView;

    const v1, 0x7f0702ea

    invoke-virtual {p0, v1}, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/deposits/FiatTransactionsFragment;->mAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
