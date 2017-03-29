.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;
.super Ljava/lang/Object;
.source "IAVLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->startAchVerification()V
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
    .line 541
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    const v2, 0x7f0702d8

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 564
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
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 546
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 558
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;->getData()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v0

    iput-object v0, v1, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 553
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mDetailsForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mCdvSentForm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 557
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - M cdv screen"

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
