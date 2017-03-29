.class public Lcom/coinbase/android/billing/BillingAddressListFragment;
.super Lroboguice/fragment/RoboDialogFragment;
.source "BillingAddressListFragment.java"


# instance fields
.field billingAddressListAdapter:Lcom/coinbase/android/billing/BillingAddressListAdapter;

.field billingAddressListView:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0179
    .end annotation
.end field

.field billingAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/Data;",
            ">;"
        }
    .end annotation
.end field

.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field cancelButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c8
    .end annotation
.end field

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field newAddressButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d017c
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d017a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lroboguice/fragment/RoboDialogFragment;-><init>()V

    .line 57
    return-void
.end method

.method private getBillingAddresses()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/billing/BillingAddressListFragment$4;

    invoke-direct {v1, p0}, Lcom/coinbase/android/billing/BillingAddressListFragment$4;-><init>(Lcom/coinbase/android/billing/BillingAddressListFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->getBillingAddresses(Lretrofit/Callback;)V

    .line 148
    return-void
.end method


# virtual methods
.method public listItemDeleted(Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    .locals 1
    .param p1, "billingAddress"    # Lcom/coinbase/api/internal/models/billingAddress/Data;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddressListAdapter:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->notifyDataSetChanged()V

    .line 158
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lroboguice/fragment/RoboDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 82
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 83
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onPause()V

    .line 68
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lroboguice/fragment/RoboDialogFragment;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->bus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->newAddressButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/billing/BillingAddressListFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/billing/BillingAddressListFragment$1;-><init>(Lcom/coinbase/android/billing/BillingAddressListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/coinbase/android/billing/BillingAddressListFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/billing/BillingAddressListFragment$2;-><init>(Lcom/coinbase/android/billing/BillingAddressListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddresses:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddresses:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/billing/BillingAddressListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddressListAdapter:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    .line 110
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddressListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddressListAdapter:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddressListView:Landroid/widget/ListView;

    new-instance v1, Lcom/coinbase/android/billing/BillingAddressListFragment$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/billing/BillingAddressListFragment$3;-><init>(Lcom/coinbase/android/billing/BillingAddressListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    invoke-direct {p0}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getBillingAddresses()V

    .line 125
    return-void
.end method
