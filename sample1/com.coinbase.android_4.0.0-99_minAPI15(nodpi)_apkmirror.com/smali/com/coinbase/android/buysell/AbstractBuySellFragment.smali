.class public abstract Lcom/coinbase/android/buysell/AbstractBuySellFragment;
.super Lroboguice/fragment/RoboFragment;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Lcom/coinbase/android/CoinbaseFragment;
.implements Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$BuySellConfirmationListener;
.implements Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;,
        Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;
    }
.end annotation


# static fields
.field private static final REQUEST_PIN:I = 0x2711


# instance fields
.field private currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d017e
    .end annotation
.end field

.field private isInForeground:Z

.field private mAccountLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0183
    .end annotation
.end field

.field private mAccountView:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0184
    .end annotation
.end field

.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;"
        }
    .end annotation
.end field

.field private mBTCAmount:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0182
    .end annotation
.end field

.field private mBTCCurrencyLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0181
    .end annotation
.end field

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mContent:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d017d
    .end annotation
.end field

.field private mCurrencyLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d017f
    .end annotation
.end field

.field protected mDefaultBuy:Ljava/lang/String;

.field protected mDefaultSell:Ljava/lang/String;

.field private mFees:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0187
    .end annotation
.end field

.field private mInstantIndicator:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0188
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mNativeAmount:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0180
    .end annotation
.end field

.field mOverlayDetails:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f4
    .end annotation
.end field

.field mOverlayIcon:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f3
    .end annotation
.end field

.field mOverlayList:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f5
    .end annotation
.end field

.field private mPaymentLabel:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0185
    .end annotation
.end field

.field private mPaymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;"
        }
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

.field private mPaymentMethodsView:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0186
    .end annotation
.end field

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mPriceString:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f0700ac
    .end annotation
.end field

.field private mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

.field private mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

.field mSetupOverlay:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f2
    .end annotation
.end field

.field mSubscribeButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f8
    .end annotation
.end field

.field private mTotalView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0189
    .end annotation
.end field

.field mUnavailabilityNotice:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f6
    .end annotation
.end field

.field mUnavailableNoticeText:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f7
    .end annotation
.end field

.field paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateOverlay()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mCurrencyLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mFees:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mTotalView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethods:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updatePaymentMethodsDisplay()V

    return-void
.end method

.method static synthetic access$600(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Lcom/coinbase/android/quickstart/QuickstartManager;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    return-object p1
.end method

.method static synthetic access$800(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object v0
.end method

.method static synthetic access$902(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object p1
.end method

.method private initializeAccountsSpinner()V
    .locals 7

    .prologue
    .line 663
    new-instance v4, Lcom/coinbase/android/buysell/AbstractBuySellFragment$6;

    .line 664
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030095

    invoke-direct {v4, p0, v5, v6}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$6;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    .line 693
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateAccountOptions()V

    .line 695
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountView:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 696
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountView:Landroid/widget/Spinner;

    new-instance v5, Lcom/coinbase/android/buysell/AbstractBuySellFragment$7;

    invoke-direct {v5, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$7;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 708
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 709
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "active_account_id"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "activeAccountId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 712
    .local v3, "selectedPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 713
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v4}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 714
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coinbase/v2/models/account/Data;

    iput-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 715
    move v3, v1

    .line 719
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountView:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 720
    return-void

    .line 712
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initializePaymentMethodsSpinner()V
    .locals 3

    .prologue
    .line 742
    new-instance v0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$8;

    .line 743
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030095

    invoke-direct {v0, p0, v1, v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$8;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    .line 770
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsView:Landroid/widget/Spinner;

    new-instance v1, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;

    invoke-direct {v1, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$9;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 793
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsView:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 795
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updatePaymentMethodsDisplay()V

    .line 796
    return-void
.end method

.method private initiateBuySell()V
    .locals 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700a2

    invoke-virtual {p0, v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 595
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getQuantityEntered()Lorg/joda/money/BigMoney;

    move-result-object v0

    if-nez v0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700a4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initiateTransfer()V

    goto :goto_0
.end method

.method private setUpDetailText()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 655
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getOverlayDetails()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "format":Ljava/lang/String;
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v1

    sget-object v2, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->ETH:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne v1, v2, :cond_0

    .line 657
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mOverlayDetails:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0702dc

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mOverlayDetails:Landroid/widget/TextView;

    new-array v2, v3, [Ljava/lang/Object;

    const v3, 0x7f0702c5

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showPINPrompt()V
    .locals 3

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.coinbase.android.pin.ACTION_PROMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 572
    return-void
.end method

.method private updateAccountOptions()V
    .locals 5

    .prologue
    .line 723
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccounts:Ljava/util/List;

    .line 724
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 726
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {v3}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v2

    .line 728
    .local v2, "currency":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccounts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 730
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->fromString(Ljava/lang/String;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v1

    .line 731
    .local v1, "accountCurrency":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->shouldShowAccount(Lcom/coinbase/v2/models/account/Data;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v1, v2, :cond_0

    .line 732
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 736
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    .end local v1    # "accountCurrency":Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;
    :cond_1
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 737
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/account/Data;

    iput-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    .line 738
    :cond_2
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 739
    return-void
.end method

.method private updateOverlay()V
    .locals 9

    .prologue
    const v8, 0x1020002

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 861
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    invoke-virtual {v3, v7}, Lcom/coinbase/android/quickstart/QuickstartManager;->getCachedQuickstartItems(Z)Ljava/util/List;

    move-result-object v2

    .line 862
    .local v2, "quickstartItems":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/android/quickstart/QuickstartItem;>;"
    instance-of v3, p0, Lcom/coinbase/android/buysell/SellFragment;

    if-eqz v3, :cond_0

    .line 864
    sget-object v3, Lcom/coinbase/android/quickstart/QuickstartItem;->DEPOSIT_FUNDS:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    :cond_0
    sget-object v3, Lcom/coinbase/android/quickstart/QuickstartItem;->REGION_UNSUPPORTED:Lcom/coinbase/android/quickstart/QuickstartItem;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 868
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 869
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mContent:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 870
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSetupOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mUnavailabilityNotice:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 873
    const/4 v1, 0x0

    .line 874
    .local v1, "loc":Ljava/util/Locale;
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 875
    new-instance v1, Ljava/util/Locale;

    .end local v1    # "loc":Ljava/util/Locale;
    const-string v3, ""

    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v4}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .restart local v1    # "loc":Ljava/util/Locale;
    :cond_1
    if-eqz v1, :cond_3

    .line 877
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 878
    .local v0, "country":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mUnavailableNoticeText:Landroid/widget/TextView;

    const v4, 0x7f070109

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSubscribeButton:Landroid/widget/Button;

    new-instance v4, Lcom/coinbase/android/buysell/AbstractBuySellFragment$10;

    invoke-direct {v4, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$10;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "loc":Ljava/util/Locale;
    :goto_1
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 914
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 916
    :cond_2
    return-void

    .line 877
    .restart local v1    # "loc":Ljava/util/Locale;
    :cond_3
    const v3, 0x7f0702b5

    invoke-virtual {p0, v3}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 889
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 890
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 891
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mContent:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSetupOverlay:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mUnavailabilityNotice:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mOverlayList:Landroid/widget/ListView;

    new-instance v4, Lcom/coinbase/android/buysell/AbstractBuySellFragment$11;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0300a8

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$11;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 908
    :cond_5
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mContent:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSetupOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mUnavailabilityNotice:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updatePaymentMethodsDisplay()V
    .locals 5

    .prologue
    .line 799
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethods:Ljava/util/List;

    if-nez v3, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 805
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethods:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 806
    .local v1, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-virtual {p0, v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->shouldShowPaymentMethod(Lcom/coinbase/v2/models/paymentMethods/Data;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 807
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 810
    .end local v1    # "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_3
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 812
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getDefaultPaymentMethodId()Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "selectedMethodId":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 814
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 815
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsView:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 816
    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/v2/models/paymentMethods/Data;

    iput-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    goto :goto_0

    .line 813
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected checkAccountSetupStatus()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mQuickstartManager:Lcom/coinbase/android/quickstart/QuickstartManager;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$1;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/quickstart/QuickstartManager;->updateQuickstartItems(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method protected abstract getAccountLabel()Ljava/lang/String;
.end method

.method protected getBuySellParams(Ljava/lang/Boolean;)Ljava/util/HashMap;
    .locals 8
    .param p1, "commit"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x7f070097

    .line 425
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "0"

    .line 432
    .local v0, "amount":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsView:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 433
    invoke-virtual {v4}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCurrency()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "currency":Ljava/lang/String;
    :goto_1
    const-string v4, "amount"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v4, "currency"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v4, "commit"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v4, "payment_method"

    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v5}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-object v2

    .line 431
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "currency":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 435
    :cond_1
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v0, "0"

    .line 437
    .restart local v0    # "amount":Ljava/lang/String;
    :goto_2
    const v4, 0x7f070094

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 440
    invoke-virtual {p0, v7}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v5}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v5

    .line 439
    invoke-static {v4, v5}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v3

    .line 444
    .local v3, "quantity":Lorg/joda/money/BigMoney;
    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->withCurrencyScale()Lorg/joda/money/BigMoney;

    move-result-object v4

    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v4, v5, v6}, Lorg/joda/money/BigMoney;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;

    move-result-object v3

    .line 446
    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .end local v3    # "quantity":Lorg/joda/money/BigMoney;
    :cond_2
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {v4}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v4

    sget-object v5, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne v4, v5, :cond_4

    .line 450
    invoke-virtual {p0, v7}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "currency":Ljava/lang/String;
    goto/16 :goto_1

    .line 435
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "currency":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 452
    .restart local v0    # "amount":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0702d9

    invoke-virtual {p0, v4}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "currency":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public getCallerFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getConfirmationDialog()Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getDefaultPaymentMethodId()Ljava/lang/String;
.end method

.method protected abstract getOverlayDetails()I
.end method

.method protected abstract getOverlayIcon()I
.end method

.method protected abstract getPaymentLabel()Ljava/lang/String;
.end method

.method protected getQuantityEntered()Lorg/joda/money/BigMoney;
    .locals 8

    .prologue
    .line 824
    const/4 v4, 0x0

    .line 826
    .local v4, "quantity":Lorg/joda/money/BigMoney;
    :try_start_0
    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    .line 828
    .local v2, "isNativeInput":Z
    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 829
    .local v3, "nativeInput":Ljava/lang/String;
    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "btcInput":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 832
    iget-object v5, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsAdapter:Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentMethodsView:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 833
    invoke-virtual {v5}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCurrency()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "currency":Ljava/lang/String;
    invoke-static {v1}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v5

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v6}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v6

    .line 834
    invoke-static {v5, v6}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v4

    .line 851
    .end local v1    # "currency":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-gtz v5, :cond_1

    .line 852
    const/4 v4, 0x0

    .line 856
    .end local v0    # "btcInput":Ljava/lang/String;
    .end local v2    # "isNativeInput":Z
    .end local v3    # "nativeInput":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 839
    .restart local v0    # "btcInput":Ljava/lang/String;
    .restart local v2    # "isNativeInput":Z
    .restart local v3    # "nativeInput":Ljava/lang/String;
    :cond_2
    const v5, 0x7f070097

    .line 840
    invoke-virtual {p0, v5}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v5

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v6}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v6

    .line 839
    invoke-static {v5, v6}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v4

    .line 844
    const v5, 0x7f070094

    invoke-virtual {p0, v5}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 845
    invoke-virtual {v4}, Lorg/joda/money/BigMoney;->withCurrencyScale()Lorg/joda/money/BigMoney;

    move-result-object v5

    sget-object v6, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    sget-object v7, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v5, v6, v7}, Lorg/joda/money/BigMoney;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/BigMoney;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 854
    .end local v0    # "btcInput":Ljava/lang/String;
    .end local v2    # "isNativeInput":Z
    .end local v3    # "nativeInput":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected abstract getQuote()V
.end method

.method protected getSelectedAccount()Lcom/coinbase/v2/models/account/Data;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    return-object v0
.end method

.method protected getSelectedPaymentMethod()Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object v0
.end method

.method public abstract getTitle()Landroid/text/SpannableStringBuilder;
.end method

.method protected abstract getType()Ljava/lang/String;
.end method

.method public abstract initiateTransfer()V
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->isInForeground:Z

    return v0
.end method

.method protected isShowingContent()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 248
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getAccountLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPaymentLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getPaymentLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mOverlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getOverlayIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initializeAccountsSpinner()V

    .line 254
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initializePaymentMethodsSpinner()V

    .line 256
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$2;

    invoke-direct {v2, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$2;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 266
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$3;

    invoke-direct {v2, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$3;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;

    iget-object v3, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-direct {v2, p0, v3}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$AmountInputWatcher;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    .local v0, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/InputFilter;>;"
    new-instance v1, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;

    invoke-direct {v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;

    invoke-direct {v4}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$BTCInputFilter;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 285
    new-instance v1, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;

    invoke-direct {v3, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$4;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-direct {v1, v2, v3}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;)V

    iput-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    .line 314
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateOverlay()V

    .line 320
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mOverlayList:Landroid/widget/ListView;

    new-instance v2, Lcom/coinbase/android/buysell/AbstractBuySellFragment$5;

    invoke-direct {v2, p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment$5;-><init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 331
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 576
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initiateBuySell()V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onBuySellClick()V
    .locals 4

    .prologue
    .line 556
    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPinManager:Lcom/coinbase/android/pin/PINManager;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v1, p0, Lcom/coinbase/android/buysell/BuyFragment;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/coinbase/android/pin/PINManager$AccessType;->BUY:Lcom/coinbase/android/pin/PINManager$AccessType;

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/coinbase/android/pin/PINManager;->isProtected(Landroid/content/Context;Lcom/coinbase/android/pin/PINManager$AccessType;)Z

    move-result v0

    .line 561
    .local v0, "isProtected":Z
    if-eqz v0, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->showPINPrompt()V

    .line 566
    :goto_1
    return-void

    .line 556
    .end local v0    # "isProtected":Z
    :cond_0
    sget-object v1, Lcom/coinbase/android/pin/PINManager$AccessType;->SELL:Lcom/coinbase/android/pin/PINManager$AccessType;

    goto :goto_0

    .line 564
    .restart local v0    # "isProtected":Z
    :cond_1
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initiateBuySell()V

    goto :goto_1
.end method

.method public onBuySellConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 0
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->transferConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 600
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->setHasOptionsMenu(Z)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->setRetainInstance(Z)V

    .line 210
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    const v0, 0x7f03005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public onPINPromptSuccessfulReturn()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->isInForeground:Z

    .line 230
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 221
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->isInForeground:Z

    .line 223
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->lastSelectedCurrencyType(Landroid/content/Context;)Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->setCurrency(Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;)V

    .line 224
    return-void
.end method

.method public onSwitchedTo()V
    .locals 0

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getQuote()V

    .line 411
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->refreshAccounts()V

    .line 412
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->checkAccountSetupStatus()V

    .line 413
    return-void
.end method

.method protected onUserDataUpdated()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateLabels()V

    .line 344
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 348
    return-void
.end method

.method protected refreshAccounts()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateAccountOptions()V

    .line 234
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->paymentMethodsTask:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V

    .line 237
    :cond_0
    return-void
.end method

.method protected abstract shouldShowAccount(Lcom/coinbase/v2/models/account/Data;)Z
.end method

.method public shouldShowKeyboard()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract shouldShowPaymentMethod(Lcom/coinbase/v2/models/paymentMethods/Data;)Z
.end method

.method public showTransferConfirmationDialog(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 6
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getConfirmationDialog()Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;

    move-result-object v1

    .line 108
    .local v1, "dialog":Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 110
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "transferString":Ljava/lang/String;
    const-string v4, "BUY_SELL_CONFIRMATION_DIALOG_TRANSFER"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v4, "BUY_SELL_CONFIRMATION_DIALOG_ACCOUNT"

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getSelectedAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "BUY_SELL_CONFIRMATION_DIALOG_PAYMENT_METHOD"

    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getSelectedPaymentMethod()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public abstract transferConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
.end method

.method protected updateLabel(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 10
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "titleString":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 516
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v5

    .line 517
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v6

    .line 516
    invoke-static {v5, v6}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v5

    .line 517
    invoke-virtual {v5}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    .line 519
    .local v0, "divisor":Ljava/math/BigDecimal;
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-lez v5, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transfers/Data;->getSubtotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v5

    .line 524
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Data;->getSubtotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v6

    .line 523
    invoke-static {v5, v6}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v3

    .line 526
    .local v3, "subtotal":Lorg/joda/money/Money;
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v3, v0, v5}, Lorg/joda/money/Money;->dividedBy(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v2

    .line 527
    .local v2, "price":Lorg/joda/money/Money;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mPriceString:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static {v2, v9}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 531
    .end local v0    # "divisor":Ljava/math/BigDecimal;
    .end local v2    # "price":Lorg/joda/money/Money;
    .end local v3    # "subtotal":Lorg/joda/money/Money;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected updateLabels()V
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->currencySelectorLayout:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/CurrencySelectorLayout;->getSelectedCurrency()Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    move-result-object v1

    sget-object v2, Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;->BTC:Lcom/coinbase/android/ui/CurrencySelectorLayout$Currency;

    if-ne v1, v2, :cond_1

    .line 353
    const-string v1, "btc"

    iget-object v2, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f070097

    .line 356
    .local v0, "btcLabel":I
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCCurrencyLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 360
    .end local v0    # "btcLabel":I
    :goto_1
    return-void

    .line 353
    :cond_0
    const v0, 0x7f070094

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCCurrencyLabel:Landroid/widget/TextView;

    const v2, 0x7f0702d9

    invoke-virtual {p0, v2}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected updateUI(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 10
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 463
    iget-object v8, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v8}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "bitcoinUnits":Ljava/lang/String;
    const-string v5, ""

    .line 466
    .local v5, "totalAmountString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 467
    .local v6, "totalFee":Lorg/joda/money/Money;
    const/4 v2, 0x0

    .line 469
    .local v2, "isInstant":Z
    if-eqz p1, :cond_1

    .line 471
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v8

    .line 472
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v9

    .line 471
    invoke-static {v8, v9, v0}, Lcom/coinbase/android/utils/MoneyUtils;->formatCurrencyAmount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Data;->getSubtotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v8

    .line 474
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Data;->getSubtotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v9

    .line 473
    invoke-static {v8, v9}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v4

    .line 476
    .local v4, "subtotal":Lorg/joda/money/Money;
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v8

    .line 477
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Data;->getTotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v9

    .line 476
    invoke-static {v8, v9}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v8

    .line 477
    invoke-virtual {v8, v4}, Lorg/joda/money/Money;->minus(Lorg/joda/money/Money;)Lorg/joda/money/Money;

    move-result-object v6

    .line 479
    invoke-virtual {v6}, Lorg/joda/money/Money;->toBigMoney()Lorg/joda/money/BigMoney;

    move-result-object v8

    invoke-virtual {v8}, Lorg/joda/money/BigMoney;->getAmount()Ljava/math/BigDecimal;

    move-result-object v8

    sget-object v9, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v8

    if-gtz v8, :cond_0

    .line 480
    const-wide/16 v8, -0x1

    invoke-virtual {v6, v8, v9}, Lorg/joda/money/Money;->multipliedBy(J)Lorg/joda/money/Money;

    move-result-object v6

    .line 483
    :cond_0
    iget-object v8, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->hasFocus()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 484
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v8

    .line 485
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Data;->getAmount()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v9

    .line 484
    invoke-static {v8, v9}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v3

    .line 486
    .local v3, "money":Lorg/joda/money/Money;
    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v9, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_8_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 488
    invoke-static {v8, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v8

    .line 486
    invoke-static {v3, v0, v8}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "btcAmount":Ljava/lang/String;
    iget-object v8, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mBTCAmount:Landroid/widget/EditText;

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .end local v1    # "btcAmount":Ljava/lang/String;
    .end local v3    # "money":Lorg/joda/money/Money;
    :goto_0
    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/v2/models/transfers/Data;->getInstant()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 496
    invoke-virtual {p0, p1}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateLabel(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 499
    .end local v4    # "subtotal":Lorg/joda/money/Money;
    :cond_1
    iget-object v8, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mTotalView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v9, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mInstantIndicator:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 502
    if-eqz v6, :cond_4

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    invoke-static {v6, v8}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "totalFeeString":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mFees:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void

    .line 492
    .end local v7    # "totalFeeString":Ljava/lang/String;
    .restart local v4    # "subtotal":Lorg/joda/money/Money;
    :cond_2
    iget-object v8, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mNativeAmount:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/coinbase/v2/models/transfers/Transfer;->getData()Lcom/coinbase/v2/models/transfers/Data;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Data;->getSubtotal()Lcom/coinbase/v2/models/transfers/Amount;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/v2/models/transfers/Amount;->getAmount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 500
    .end local v4    # "subtotal":Lorg/joda/money/Money;
    :cond_3
    const/16 v8, 0x8

    goto :goto_1

    .line 502
    :cond_4
    const-string v7, ""

    goto :goto_2
.end method

.method protected updateWithNewCurrency()V
    .locals 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getTitle()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "titleString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    invoke-direct {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->setUpDetailText()V

    .line 541
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->updateLabels()V

    .line 542
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->refreshAccounts()V

    .line 543
    invoke-virtual {p0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->getQuote()V

    .line 544
    return-void
.end method
