.class Lcom/coinbase/android/billing/BillingAddressListAdapter$2;
.super Ljava/lang/Object;
.source "BillingAddressListAdapter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/billing/BillingAddressListAdapter;->deleteBillingAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

.field final synthetic val$billingAddress:Lcom/coinbase/api/internal/models/billingAddress/Data;


# direct methods
.method constructor <init>(Lcom/coinbase/android/billing/BillingAddressListAdapter;Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/billing/BillingAddressListAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    iput-object p2, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->val$billingAddress:Lcom/coinbase/api/internal/models/billingAddress/Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    iget-object v0, v0, Lcom/coinbase/android/billing/BillingAddressListAdapter;->bus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$2;->val$billingAddress:Lcom/coinbase/api/internal/models/billingAddress/Data;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
