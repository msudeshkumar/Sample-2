.class public Lcom/coinbase/android/paymentmethods/IAVLoginFragment;
.super Lroboguice/fragment/RoboFragment;
.source "IAVLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$BuySellConfirmationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;,
        Lcom/coinbase/android/paymentmethods/IAVLoginFragment$ConfirmPlaidCancelDialogFragment;,
        Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;
    }
.end annotation


# static fields
.field public static final PAYMENT_METHOD:Ljava/lang/String; = "payment_method"


# instance fields
.field buyCustomSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0129
    .end annotation
.end field

.field isInVerificationMode:Z

.field mAccountInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d016e
    .end annotation
.end field

.field mAccountNumber:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;

.field mAllDoneDetails:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02fa
    .end annotation
.end field

.field mAllDoneForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02f9
    .end annotation
.end field

.field mAllDoneSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d02fb
    .end annotation
.end field

.field mAmount1:Ljava/lang/String;

.field mAmount2:Ljava/lang/String;

.field mAmountsForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d012b
    .end annotation
.end field

.field mAmountsSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d012e
    .end annotation
.end field

.field mBitsEstimate:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0127
    .end annotation
.end field

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mBuyForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0125
    .end annotation
.end field

.field mBuySubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0128
    .end annotation
.end field

.field mCancelButton:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d012a
    .end annotation
.end field

.field mCdvButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01bd
    .end annotation
.end field

.field mCdvSentContinue:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01bf
    .end annotation
.end field

.field mCdvSentForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01be
    .end annotation
.end field

.field mChooseVerificationForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01bc
    .end annotation
.end field

.field mCustomerName:Ljava/lang/String;

.field mDetailsForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b9
    .end annotation
.end field

.field mDetailsSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ba
    .end annotation
.end field

.field mFirstAmountInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d012c
    .end annotation
.end field

.field mIavInProgressForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01c0
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mLogoView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b2
    .end annotation
.end field

.field mNameForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b3
    .end annotation
.end field

.field mNameInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b4
    .end annotation
.end field

.field mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

.field mRoutingDetails:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01bb
    .end annotation
.end field

.field mRoutingInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d016f
    .end annotation
.end field

.field mRoutingNumber:Ljava/lang/String;

.field mSecondAmountInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d012d
    .end annotation
.end field

.field mSubmitButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b5
    .end annotation
.end field

.field mTypeForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b6
    .end annotation
.end field

.field mTypeSpinner:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b7
    .end annotation
.end field

.field mTypeSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01b8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->startAchVerification()V

    return-void
.end method

.method private completeCDVVerification()V
    .locals 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f070293

    .line 572
    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 574
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "amount_1"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string v2, "amount_2"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->completeCDVVerification(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 608
    return-void
.end method

.method private createAchAccountManually()V
    .locals 5

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0700da

    .line 497
    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 499
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "type"

    const-string v3, "ach_bank_account"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v2, "customer_name"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCustomerName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string v2, "account_number"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v2, "routing_number"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountType:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 505
    const-string v2, "account_type"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$4;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createBankManually(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 531
    return-void
.end method

.method public static newInstance(Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/android/paymentmethods/IAVLoginFragment;
    .locals 5
    .param p0, "method"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 172
    new-instance v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-direct {v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;-><init>()V

    .line 173
    .local v1, "f":Lcom/coinbase/android/paymentmethods/IAVLoginFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 175
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "payment_method"

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    return-object v1
.end method

.method private startAchVerification()V
    .locals 5

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f070293

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 537
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "verification_method"

    const-string v3, "cdv"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->startAchVerification(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 568
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 197
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeSubmit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mDetailsSubmit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsSubmit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneSubmit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingDetails:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCdvButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCdvSentContinue:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBuySubmit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->buyCustomSubmit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0300bb

    invoke-direct {v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 213
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;>;"
    new-instance v2, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;

    const-string v3, "checking"

    const v4, 0x7f07005f

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 214
    new-instance v2, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;

    const-string v3, "savings"

    const v4, 0x7f070060

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 215
    new-instance v2, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;

    const-string v3, "business_checking"

    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 218
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mNameForm:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mDetailsForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mChooseVerificationForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCdvSentForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mIavInProgressForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBuyForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    move-result-object v1

    .line 231
    .local v1, "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    sget-object v2, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->CREDIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->DEBIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-ne v1, v2, :cond_2

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLogoView:Landroid/widget/ImageView;

    const v3, 0x7f02013c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mNameForm:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCdvStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 242
    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCdvStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    move-result-object v2

    sget-object v3, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->IN_PROGRESS:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    if-ne v2, v3, :cond_3

    .line 243
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsForm:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .end local v1    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - M enter name screen"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    return-void

    .line 235
    .restart local v1    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    :cond_2
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLogoView:Landroid/widget/ImageView;

    const v3, 0x7f0200de

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsForm:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 247
    sget-object v2, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->CREDIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->DEBIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v1, v2, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->startAchVerification()V

    goto :goto_1
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->isInVerificationMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneForm:Landroid/view/View;

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBuyForm:Landroid/view/View;

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 419
    :cond_0
    const/4 v0, 0x0

    .line 449
    :goto_0
    return v0

    .line 423
    :cond_1
    new-instance v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;

    invoke-direct {v0, p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;)V

    .line 447
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$3;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBuySellComplete(Lcom/coinbase/android/event/BuySellMadeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/BuySellMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 641
    .local v0, "fa":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 642
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 644
    :cond_0
    return-void
.end method

.method public onBuySellConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 6
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 631
    new-instance v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 632
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 633
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    const-string v5, "USD"

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/transfers/BuyBitcoinTask;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0, p1}, Lcom/coinbase/android/transfers/BuyBitcoinTask;->commitBuy(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 636
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCustomerName:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCustomerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0700dd

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mNameForm:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeForm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeSpinner:Landroid/widget/Spinner;

    .line 287
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountType:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mTypeForm:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mDetailsForm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - M enter credentials screen"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mDetailsSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    .line 296
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingNumber:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountNumber:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    .line 300
    :cond_4
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070126

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAccountNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_7

    .line 305
    :cond_6
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070123

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 309
    :cond_7
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->createAchAccountManually()V

    .line 311
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    goto/16 :goto_0

    .line 312
    :cond_8
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCdvButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 313
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->startAchVerification()V

    .line 314
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - M cdv initiated"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 315
    :cond_9
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_e

    .line 316
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mFirstAmountInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount1:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSecondAmountInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount2:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 320
    :cond_a
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070125

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 324
    :cond_b
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    move-result-object v9

    .line 327
    .local v9, "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    sget-object v0, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->CREDIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v9, v0, :cond_c

    sget-object v0, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->DEBIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-ne v9, v0, :cond_d

    .line 330
    :cond_c
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const v2, 0x7f070293

    invoke-virtual {p0, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v6

    .line 332
    .local v6, "dialog":Landroid/app/ProgressDialog;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "amount_1"

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount1:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v0, "amount_2"

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmount2:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v0, "verification_method"

    const-string v1, "cdv"

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;

    invoke-direct {v2, p0, v6}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1, v8, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->completeCardCDV(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 361
    .end local v6    # "dialog":Landroid/app/ProgressDialog;
    .end local v8    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->completeCDVVerification()V

    goto/16 :goto_0

    .line 363
    .end local v9    # "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    :cond_e
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCdvSentContinue:Landroid/widget/Button;

    if-ne p1, v0, :cond_f

    .line 364
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 365
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 366
    :cond_f
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_10

    .line 367
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPhoneNumbers(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 394
    :cond_10
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBuySubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_11

    .line 395
    new-instance v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 396
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 397
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    const-string v5, "USD"

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/transfers/BuyBitcoinTask;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V

    sget v1, Lcom/coinbase/android/utils/MoneyUtils;->FIVE:I

    int-to-double v2, v1

    .line 399
    invoke-virtual {v0, v2, v3}, Lcom/coinbase/android/transfers/BuyBitcoinTask;->buyBitcoin(D)V

    goto/16 :goto_0

    .line 400
    :cond_11
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->buyCustomSubmit:Landroid/widget/Button;

    if-ne p1, v0, :cond_12

    .line 401
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/coinbase/android/MainActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    const-string v0, "com.coinbase.MainActivity.ACTION_BUY"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v7}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 405
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_12
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mRoutingDetails:Landroid/view/View;

    if-ne p1, v0, :cond_13

    .line 407
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->showRoutingDetails()V

    goto/16 :goto_0

    .line 408
    :cond_13
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCancelButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 410
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 411
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Bank account first purchase no thanks"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 184
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "payment_method"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "payment_method"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/v2/models/paymentMethods/Data;

    iput-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->isInVerificationMode:Z

    .line 188
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 261
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 267
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 268
    return-void
.end method
