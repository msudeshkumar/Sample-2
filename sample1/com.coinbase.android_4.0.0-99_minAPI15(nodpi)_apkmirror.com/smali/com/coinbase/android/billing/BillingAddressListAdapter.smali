.class public Lcom/coinbase/android/billing/BillingAddressListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BillingAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/api/internal/models/billingAddress/Data;",
        ">;"
    }
.end annotation


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "localPriceAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/billingAddress/Data;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 45
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/billing/BillingAddressListAdapter;Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/billing/BillingAddressListAdapter;
    .param p1, "x1"    # Lcom/coinbase/api/internal/models/billingAddress/Data;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->deleteBillingAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)V

    return-void
.end method

.method private deleteBillingAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    .locals 3
    .param p1, "billingAddress"    # Lcom/coinbase/api/internal/models/billingAddress/Data;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;-><init>(Lcom/coinbase/android/billing/BillingAddressListAdapter;Lcom/coinbase/api/internal/models/billingAddress/Data;)V

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->deleteBillingAddresses(Ljava/lang/String;Lretrofit/Callback;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 52
    :cond_0
    new-instance v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;-><init>(Lcom/coinbase/android/billing/BillingAddressListAdapter$1;)V

    .line 53
    .local v2, "viewHolder":Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 54
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    const v3, 0x7f0d02c5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;->addressTextView:Landroid/widget/TextView;

    .line 57
    const v3, 0x7f0d02c6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;->cityStateZipTextView:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0d02c4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;->deleteButton:Landroid/widget/ImageButton;

    .line 63
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/billingAddress/Data;

    .line 65
    .local v0, "billingAddress":Lcom/coinbase/api/internal/models/billingAddress/Data;
    iget-object v3, v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;->addressTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coinbase/android/utils/BillingUtils;->getAddressLine(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;->cityStateZipTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coinbase/android/utils/BillingUtils;->getCityStateZip(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;->deleteButton:Landroid/widget/ImageButton;

    new-instance v4, Lcom/coinbase/android/billing/BillingAddressListAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/coinbase/android/billing/BillingAddressListAdapter$1;-><init>(Lcom/coinbase/android/billing/BillingAddressListAdapter;Lcom/coinbase/api/internal/models/billingAddress/Data;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object p2

    .line 60
    .end local v0    # "billingAddress":Lcom/coinbase/api/internal/models/billingAddress/Data;
    .end local v2    # "viewHolder":Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/coinbase/android/billing/BillingAddressListAdapter$ViewHolder;
    goto :goto_0
.end method
