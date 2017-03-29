.class Lcom/coinbase/android/billing/BillingAddressListAdapter$1;
.super Ljava/lang/Object;
.source "BillingAddressListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/billing/BillingAddressListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

.field final synthetic val$billingAddress:Lcom/coinbase/api/internal/models/billingAddress/Data;


# direct methods
.method constructor <init>(Lcom/coinbase/android/billing/BillingAddressListAdapter;Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/billing/BillingAddressListAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$1;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    iput-object p2, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$1;->val$billingAddress:Lcom/coinbase/api/internal/models/billingAddress/Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$1;->this$0:Lcom/coinbase/android/billing/BillingAddressListAdapter;

    iget-object v1, p0, Lcom/coinbase/android/billing/BillingAddressListAdapter$1;->val$billingAddress:Lcom/coinbase/api/internal/models/billingAddress/Data;

    # invokes: Lcom/coinbase/android/billing/BillingAddressListAdapter;->deleteBillingAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/billing/BillingAddressListAdapter;->access$100(Lcom/coinbase/android/billing/BillingAddressListAdapter;Lcom/coinbase/api/internal/models/billingAddress/Data;)V

    .line 72
    return-void
.end method
