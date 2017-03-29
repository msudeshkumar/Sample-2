.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;
.super Ljava/lang/Object;
.source "IAVLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->onClick(Landroid/view/View;)V
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
        "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 391
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 392
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 4
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;>;"
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 370
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 372
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 375
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->isPhoneVerified(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBuyForm:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    new-instance v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;->execute()V

    .line 380
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mSubmitButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    const v2, 0x7f0701d8

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Bank account first purchase screen shown"

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 384
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
