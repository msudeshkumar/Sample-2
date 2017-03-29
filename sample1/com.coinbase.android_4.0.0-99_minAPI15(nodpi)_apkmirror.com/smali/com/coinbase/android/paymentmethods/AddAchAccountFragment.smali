.class public Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;
.super Lroboguice/fragment/RoboFragment;
.source "AddAchAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mAccountNumberInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d016e
    .end annotation
.end field

.field mAccountTypeSpinner:Landroid/widget/Spinner;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d016d
    .end annotation
.end field

.field mAddButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0171
    .end annotation
.end field

.field mCustomerNameInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0170
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mRoutingNumberInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d016f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method

.method private createAchAccountManually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "customerName"    # Ljava/lang/String;
    .param p3, "accountNumber"    # Ljava/lang/String;
    .param p4, "routingNumber"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f0700da

    .line 34
    invoke-virtual {p0, v4}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 36
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "type"

    const-string v3, "ach_bank_account"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "customer_name"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "account_number"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v2, "routing_number"

    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "account_type"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;

    invoke-direct {v3, p0, v1}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v0, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->createBankManually(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 64
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "checking"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "savings"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "business_checking"

    aput-object v3, v0, v2

    .line 100
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0300bb

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 103
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    .line 109
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "accountType":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mAccountNumberInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "accountNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mRoutingNumberInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "routingNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->mCustomerNameInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "customerName":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->createAchAccountManually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    const v0, 0x7f030058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
