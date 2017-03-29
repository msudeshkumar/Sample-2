.class Lcom/coinbase/android/billing/BillingAddressListFragment$4;
.super Ljava/lang/Object;
.source "BillingAddressListFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/billing/BillingAddressListFragment;->getBillingAddresses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/billing/BillingAddressListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/billing/BillingAddressListFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    iget-object v0, v0, Lcom/coinbase/android/billing/BillingAddressListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    const v2, 0x7f0700d5

    invoke-virtual {v1, v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 3
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;>;"
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    iget-object v0, v0, Lcom/coinbase/android/billing/BillingAddressListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    const v2, 0x7f0700d5

    invoke-virtual {v1, v2}, Lcom/coinbase/android/billing/BillingAddressListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    iget-object v0, v0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    iget-object v1, v0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddresses:Ljava/util/List;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListFragment$4;->this$0:Lcom/coinbase/android/billing/BillingAddressListFragment;

    iget-object v0, v0, Lcom/coinbase/android/billing/BillingAddressListFragment;->billingAddressListAdapter:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
