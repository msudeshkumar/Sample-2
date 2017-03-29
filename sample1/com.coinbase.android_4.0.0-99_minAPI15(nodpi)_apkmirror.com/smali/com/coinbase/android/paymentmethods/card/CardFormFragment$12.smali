.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->buyIfPhoneIsVerified()V
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 583
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 584
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
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 573
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/android/utils/Utils;->isPhoneVerified(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->formLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->buyBTCLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$12;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
