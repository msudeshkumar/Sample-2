.class Lcom/coinbase/android/billing/AddBillingAddressActivity$3;
.super Ljava/lang/Object;
.source "AddBillingAddressActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/billing/AddBillingAddressActivity;->createBillingAddress()V
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
        "Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/billing/AddBillingAddressActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/billing/AddBillingAddressActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iput-object p2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object v0, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iget-object v2, v2, Lcom/coinbase/android/billing/AddBillingAddressActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iget-object v3, v3, Lcom/coinbase/android/billing/AddBillingAddressActivity;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/coinbase/android/utils/BillingUtils;->showProgressBar(Landroid/content/Context;ZLandroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 162
    iget-object v0, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iget-object v1, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;>;"
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 138
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iget-object v4, v4, Lcom/coinbase/android/billing/AddBillingAddressActivity;->progressBar:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iget-object v5, v5, Lcom/coinbase/android/billing/AddBillingAddressActivity;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-static {v2, v3, v4, v5}, Lcom/coinbase/android/utils/BillingUtils;->showProgressBar(Landroid/content/Context;ZLandroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V

    .line 139
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    iget-object v3, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    const v4, 0x7f070083

    invoke-virtual {v3, v4}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;->getData()Lcom/coinbase/api/internal/models/billingAddress/Data;

    move-result-object v0

    .line 150
    .local v0, "billingAddress":Lcom/coinbase/api/internal/models/billingAddress/Data;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "BILLING_ID"

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "BILLING_STRING"

    invoke-static {v0}, Lcom/coinbase/android/utils/BillingUtils;->getFullAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 154
    iget-object v2, p0, Lcom/coinbase/android/billing/AddBillingAddressActivity$3;->this$0:Lcom/coinbase/android/billing/AddBillingAddressActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/billing/AddBillingAddressActivity;->finish()V

    goto :goto_0
.end method
