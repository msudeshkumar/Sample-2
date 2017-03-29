.class public Lcom/coinbase/android/billing/AddBillingAddressActivity;
.super Lcom/coinbase/android/CoinbaseActivity;
.source "AddBillingAddressActivity.java"


# instance fields
.field address1TextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00b3
    .end annotation
.end field

.field address2TextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00b5
    .end annotation
.end field

.field cityTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00b8
    .end annotation
.end field

.field continueButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c1
    .end annotation
.end field

.field countryTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00bf
    .end annotation
.end field

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field overlayLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c3
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c2
    .end annotation
.end field

.field stateTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00ba
    .end annotation
.end field

.field stateTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00b9
    .end annotation
.end field

.field zipTextField:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00bc
    .end annotation
.end field

.field zipTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00bb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/CoinbaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/billing/AddBillingAddressActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/billing/AddBillingAddressActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->submitForm()V

    return-void
.end method

.method private createBillingAddress()V
    .locals 9

    .prologue
    .line 124
    const-string v0, ""

    const v1, 0x7f0701d3

    invoke-virtual {p0, v1}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v8

    .line 126
    .local v8, "dialog":Landroid/app/ProgressDialog;
    iget-object v0, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->address1TextField:Landroid/widget/EditText;

    .line 127
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->address2TextField:Landroid/widget/EditText;

    .line 128
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->cityTextField:Landroid/widget/EditText;

    .line 129
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->stateTextField:Landroid/widget/EditText;

    .line 130
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->zipTextField:Landroid/widget/EditText;

    .line 131
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 132
    invoke-interface {v6}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;

    invoke-direct {v7, p0, v8}, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;-><init>(Lcom/coinbase/android/billing/AddBillingAddressActivity;Landroid/app/ProgressDialog;)V

    .line 126
    invoke-virtual/range {v0 .. v7}, Lcom/coinbase/api/internal/CoinbaseInternal;->createBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 165
    return-void
.end method

.method private isValid()Z
    .locals 2

    .prologue
    .line 113
    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->address1TextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->cityTextField:Landroid/widget/EditText;

    .line 114
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->stateTextField:Landroid/widget/EditText;

    .line 115
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->zipTextField:Landroid/widget/EditText;

    .line 116
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->countryTextField:Landroid/widget/EditText;

    .line 117
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private submitForm()V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const v0, 0x7f0701cd

    invoke-virtual {p0, v0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v0, v1, v2}, Lcom/coinbase/android/utils/BillingUtils;->showProgressBar(Landroid/content/Context;ZLandroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 108
    invoke-direct {p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->createBillingAddress()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->supportLandscapeOnTablet()V

    .line 67
    invoke-super {p0, p1}, Lcom/coinbase/android/CoinbaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v2, 0x7f030020

    invoke-virtual {p0, v2}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->initToolbar()V

    .line 72
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v2, v3, v4}, Lcom/coinbase/android/utils/BillingUtils;->showProgressBar(Landroid/content/Context;ZLandroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 74
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->zipTextField:Landroid/widget/EditText;

    new-instance v3, Lcom/coinbase/android/billing/AddBillingAddressActivity$1;

    invoke-direct {v3, p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity$1;-><init>(Lcom/coinbase/android/billing/AddBillingAddressActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v1, "loc":Ljava/util/Locale;
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->countryTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->continueButton:Landroid/widget/Button;

    new-instance v3, Lcom/coinbase/android/billing/AddBillingAddressActivity$2;

    invoke-direct {v3, p0}, Lcom/coinbase/android/billing/AddBillingAddressActivity$2;-><init>(Lcom/coinbase/android/billing/AddBillingAddressActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->stateTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f0702e4

    invoke-virtual {p0, v3}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->zipTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    const v3, 0x7f0702e3

    invoke-virtual {p0, v3}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity;->zipTextField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 101
    :cond_0
    return-void
.end method
