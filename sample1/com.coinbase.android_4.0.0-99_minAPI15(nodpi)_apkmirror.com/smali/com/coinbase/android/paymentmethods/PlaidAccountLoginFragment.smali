.class public Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
.super Lroboguice/fragment/RoboFragment;
.source "PlaidAccountLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coinbase/android/buysell/BuySellConfirmationDialogFragment$BuySellConfirmationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$RefreshExchangeRateTask;,
        Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$ConfirmPlaidCancelDialogFragment;
    }
.end annotation


# instance fields
.field buyCustomSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0129
    .end annotation
.end field

.field mAccountSpinner:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0204
    .end annotation
.end field

.field mAccountSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0205
    .end annotation
.end field

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

.field mChooseAccountForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0203
    .end annotation
.end field

.field private mInstitution:Lcom/coinbase/api/internal/entity/Institution;

.field mLoginForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f3
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mLoginManual:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f7
    .end annotation
.end field

.field mLogoView:Landroid/widget/ImageView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f2
    .end annotation
.end field

.field mMFASpinner:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01fd
    .end annotation
.end field

.field mPINForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f9
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field mPasswordInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f5
    .end annotation
.end field

.field private mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

.field mPinInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01fa
    .end annotation
.end field

.field mPinSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01fb
    .end annotation
.end field

.field mProtectionDetails:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f8
    .end annotation
.end field

.field mQuestionsContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0201
    .end annotation
.end field

.field mSendForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01fc
    .end annotation
.end field

.field mSendMfaSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01fe
    .end annotation
.end field

.field private mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

.field mSubmitButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f6
    .end annotation
.end field

.field mSubmitForm:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01ff
    .end annotation
.end field

.field mSubmitMfaSubmit:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0202
    .end annotation
.end field

.field mSubmitTitle:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0200
    .end annotation
.end field

.field private mUsername:Ljava/lang/String;

.field mUsernameInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01f4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    return-object v0
.end method

.method static synthetic access$002(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;)Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
    .param p1, "x1"    # Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateSendOptionsSpinner()V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateSubmitMFAOptions()V

    return-void
.end method

.method static synthetic access$300(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateAccountSpinner()V

    return-void
.end method

.method static synthetic access$400(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object v0
.end method

.method static synthetic access$402(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
    .param p1, "x1"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    return-object p1
.end method

.method private createAchSetupSession(Lcom/coinbase/api/internal/entity/Institution;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "institution"    # Lcom/coinbase/api/internal/entity/Institution;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "pin"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0700da

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 496
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 497
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "institution"

    invoke-virtual {p1}, Lcom/coinbase/api/internal/entity/Institution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v2, "username"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v2, "password"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    if-eqz p4, :cond_0

    .line 501
    const-string v2, "pin"

    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$3;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createAchSetupSession(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 539
    return-void
.end method

.method private createBankAccount(Ljava/lang/String;)V
    .locals 5
    .param p1, "achAccountId"    # Ljava/lang/String;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0700da

    .line 608
    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 607
    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 610
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 611
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "type"

    const-string v3, "ach_bank_account"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v2, "ach_setup_session_id"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v2, "ach_account_id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createBankWithAchSetupSession(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 644
    return-void
.end method

.method public static newInstance(Lcom/coinbase/api/internal/entity/Institution;)Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
    .locals 3
    .param p0, "institution"    # Lcom/coinbase/api/internal/entity/Institution;

    .prologue
    .line 173
    new-instance v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-direct {v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;-><init>()V

    .line 174
    .local v1, "f":Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "PlaidAccountLoginActivity_Institution"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 176
    invoke-virtual {v1, v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    return-object v1
.end method

.method private populateAccountSpinner()V
    .locals 5

    .prologue
    .line 228
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getAccounts()Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f07018b

    invoke-virtual {p0, v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    new-instance v1, Lcom/coinbase/android/paymentmethods/AccountsAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0300bb

    invoke-direct {v1, v2, v3, v0}, Lcom/coinbase/android/paymentmethods/AccountsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 239
    .local v1, "adapter":Lcom/coinbase/android/paymentmethods/AccountsAdapter;
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method private populateSendOptionsSpinner()V
    .locals 4

    .prologue
    .line 243
    new-instance v0, Lcom/coinbase/android/paymentmethods/SendOptionsAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0300bb

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getMfa()Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;->getData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/android/paymentmethods/SendOptionsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 244
    .local v0, "adapter":Lcom/coinbase/android/paymentmethods/SendOptionsAdapter;
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mMFASpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 245
    return-void
.end method

.method private populateSubmitMFAOptions()V
    .locals 15

    .prologue
    const v14, 0x7f0d02d2

    const v13, 0x7f0d0255

    const/4 v12, 0x0

    .line 248
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 249
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 250
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v8}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getMfa()Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    move-result-object v3

    .line 251
    .local v3, "mfa":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;
    sget-object v8, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;->$SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->create(Ljava/lang/String;)Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    const v8, 0x7f0300a6

    iget-object v9, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v9, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 254
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    const v9, 0x7f070286

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setHint(I)V

    .line 256
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 259
    .end local v7    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;->getData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;

    .line 260
    .local v1, "data":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;
    move-object v6, v1

    .line 261
    .local v6, "selection":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;
    const v8, 0x7f0300a9

    iget-object v10, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 262
    .local v5, "sView":Landroid/view/View;
    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->getQuestion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v10, 0x7f0300bb

    invoke-virtual {v6}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->getAnswers()Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v8, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 264
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 265
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    invoke-virtual {v8, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 269
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "data":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;
    .end local v5    # "sView":Landroid/view/View;
    .end local v6    # "selection":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;
    :pswitch_2
    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;->getData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;

    .line 270
    .restart local v1    # "data":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;
    const v8, 0x7f0300a2

    iget-object v10, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 271
    .local v4, "qView":Landroid/view/View;
    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->getQuestion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v8, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendMFA(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "mask"    # Ljava/lang/String;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0701f7

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 544
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "mask"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$4;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, p2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->sendMFAToken(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 569
    return-void
.end method

.method private submitMFA(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p3, "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f070217

    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 573
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 574
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 575
    const-string v2, "mfa"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$5;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, p1, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->submitMFAToken(Ljava/util/HashMap;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 604
    return-void

    .line 577
    :cond_0
    const-string v2, "mfa"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLogoView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    invoke-static {v1}, Lcom/coinbase/android/utils/Utils;->getInstitutionLogo(Lcom/coinbase/api/internal/entity/Institution;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManual:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPinSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSendMfaSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitMfaSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAccountSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAllDoneSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBuySubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->buyCustomSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManual:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mProtectionDetails:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mProtectionDetails:Landroid/widget/TextView;

    const v1, 0x7f070112

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mProtectionDetails:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 222
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mProtectionDetails:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->stripUnderlines(Landroid/widget/TextView;)V

    .line 224
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - P credentials screen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    .line 435
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAllDoneForm:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBuyForm:Landroid/view/View;

    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 438
    :cond_0
    const/4 v1, 0x0

    .line 467
    :goto_0
    return v1

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 443
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/Activity;)V

    .line 465
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 467
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onBuySellComplete(Lcom/coinbase/android/event/BuySellMadeEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/BuySellMadeEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 676
    .local v0, "fa":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 679
    :cond_0
    return-void
.end method

.method public onBuySellConfirmed(Lcom/coinbase/v2/models/transfers/Transfer;)V
    .locals 6
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transfers/Transfer;

    .prologue
    .line 666
    new-instance v0, Lcom/coinbase/android/transfers/BuyBitcoinTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 667
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 668
    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    const-string v5, "USD"

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/transfers/BuyBitcoinTask;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0, p1}, Lcom/coinbase/android/transfers/BuyBitcoinTask;->commitBuy(Lcom/coinbase/v2/models/transfers/Transfer;)V

    .line 671
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mUsernameInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mUsername:Ljava/lang/String;

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPasswordInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPassword:Ljava/lang/String;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mUsername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPassword:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f070285

    .line 299
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 298
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 305
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    sget-object v3, Lcom/coinbase/api/internal/entity/Institution;->USAA:Lcom/coinbase/api/internal/entity/Institution;

    if-ne v2, v3, :cond_3

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginForm:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPINForm:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - P pin screen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPassword:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->createAchSetupSession(Lcom/coinbase/api/internal/entity/Institution;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPinSubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPinInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 317
    .local v15, "mPin":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0701c7

    .line 319
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 318
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 322
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v15}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->createAchSetupSession(Lcom/coinbase/api/internal/entity/Institution;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v15    # "mPin":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSendMfaSubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mMFASpinner:Landroid/widget/Spinner;

    .line 327
    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mMFASpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;

    check-cast v2, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Data;->getMask()Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, "mask":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->sendMFA(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    .end local v16    # "mask":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitMfaSubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 331
    const/4 v11, 0x0

    .line 332
    .local v11, "code":Ljava/lang/String;
    const/4 v10, 0x0

    .line 334
    .local v10, "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    if-nez v2, :cond_8

    const-string v12, "Event - M iav mfa requested"

    .line 338
    .local v12, "event":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getMfa()Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->create(Ljava/lang/String;)Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;

    move-result-object v18

    .line 340
    .local v18, "type":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;
    sget-object v2, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$7;->$SwitchMap$com$coinbase$api$internal$models$achSetupSession$mfa$Mfa$Type:[I

    invoke-virtual/range {v18 .. v18}, Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSession:Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/AchSetupSession;->getData()Lcom/coinbase/api/internal/models/achSetupSession/Data;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/achSetupSession/Data;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v10}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->submitMFA(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 334
    .end local v12    # "event":Ljava/lang/String;
    .end local v18    # "type":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;
    :cond_8
    const-string v12, "Event - P mfa requested"

    goto :goto_1

    .line 342
    .restart local v12    # "event":Ljava/lang/String;
    .restart local v18    # "type":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d02d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 343
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 345
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Property: MFA type:  code"

    aput-object v5, v3, v4

    invoke-virtual {v2, v12, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 348
    :pswitch_1
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .restart local v10    # "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_9

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d02d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 351
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 353
    :cond_9
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Property: MFA type:  questions"

    aput-object v5, v3, v4

    invoke-virtual {v2, v12, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 356
    .end local v13    # "i":I
    :pswitch_2
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .restart local v10    # "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mQuestionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d02d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 359
    .local v17, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    .line 360
    .local v9, "adapter":Landroid/widget/SpinnerAdapter;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v9, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 362
    .end local v9    # "adapter":Landroid/widget/SpinnerAdapter;
    .end local v17    # "spinner":Landroid/widget/Spinner;
    :cond_a
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Property: MFA type:  selections"

    aput-object v5, v3, v4

    invoke-virtual {v2, v12, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 367
    .end local v10    # "answers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "code":Ljava/lang/String;
    .end local v12    # "event":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v18    # "type":Lcom/coinbase/api/internal/models/achSetupSession/mfa/Mfa$Type;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAccountSubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v9

    .line 369
    .restart local v9    # "adapter":Landroid/widget/SpinnerAdapter;
    if-nez v9, :cond_c

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->populateAccountSpinner()V

    goto/16 :goto_0

    .line 372
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v9, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "accountId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->hideKeyboardFrom(Landroid/app/Activity;Landroid/view/View;)V

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->createBankAccount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 377
    .end local v8    # "accountId":Ljava/lang/String;
    .end local v9    # "adapter":Landroid/widget/SpinnerAdapter;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAllDoneSubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)V

    invoke-virtual {v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPhoneNumbers(Lretrofit/Callback;)V

    goto/16 :goto_0

    .line 406
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBuySubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_f

    .line 407
    new-instance v2, Lcom/coinbase/android/transfers/BuyBitcoinTask;

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 409
    invoke-interface {v5}, Lcom/coinbase/api/LoginManager;->getPrimaryAccount()Lcom/coinbase/v2/models/account/Data;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    const-string v7, "USD"

    invoke-direct/range {v2 .. v7}, Lcom/coinbase/android/transfers/BuyBitcoinTask;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;Ljava/lang/String;)V

    sget v3, Lcom/coinbase/android/utils/MoneyUtils;->FIVE:I

    int-to-double v4, v3

    .line 411
    invoke-virtual {v2, v4, v5}, Lcom/coinbase/android/transfers/BuyBitcoinTask;->buyBitcoin(D)V

    goto/16 :goto_0

    .line 412
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->buyCustomSubmit:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 413
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/coinbase/android/MainActivity;

    invoke-direct {v14, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 415
    const-string v2, "com.coinbase.MainActivity.ACTION_BUY"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 418
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLoginManual:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_11

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->showManualLogin()V

    goto/16 :goto_0

    .line 422
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mCancelButton:Landroid/view/View;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_12

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 425
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - Bank account first purchase no thanks"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mProtectionDetails:Landroid/widget/TextView;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 428
    const-string v2, "https://support.coinbase.com/customer/portal/articles/957255-how-is-my-bank-account-information-protected-"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 429
    .local v19, "uri":Landroid/net/Uri;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v14, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 430
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 184
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "PlaidAccountLoginActivity_Institution"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/entity/Institution;

    iput-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mInstitution:Lcom/coinbase/api/internal/entity/Institution;

    .line 185
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    const v0, 0x7f03007e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 281
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 287
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 288
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 191
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBuyForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    return-void
.end method
