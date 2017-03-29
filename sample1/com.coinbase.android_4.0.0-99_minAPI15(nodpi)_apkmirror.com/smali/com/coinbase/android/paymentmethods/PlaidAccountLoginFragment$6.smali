.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;
.super Ljava/lang/Object;
.source "PlaidAccountLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->createBankAccount(Ljava/lang/String;)V
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
        "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 641
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 642
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
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 620
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 622
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 636
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;->getData()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v0

    # setter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v1, v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$402(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;Lcom/coinbase/v2/models/paymentMethods/Data;)Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 628
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAllDoneForm:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mAllDoneDetails:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    # getter for: Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-static {v3}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->access$400(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;)Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mChooseAccountForm:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 635
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - P successful"

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
