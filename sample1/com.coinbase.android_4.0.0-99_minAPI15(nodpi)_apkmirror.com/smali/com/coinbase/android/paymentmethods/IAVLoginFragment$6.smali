.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;
.super Ljava/lang/Object;
.source "IAVLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->completeCDVVerification()V
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 605
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 606
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

    .line 582
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 584
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 600
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;->getData()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v0

    iput-object v0, v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 591
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsForm:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneForm:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneDetails:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 594
    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 593
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$6;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 599
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - M successful"

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
