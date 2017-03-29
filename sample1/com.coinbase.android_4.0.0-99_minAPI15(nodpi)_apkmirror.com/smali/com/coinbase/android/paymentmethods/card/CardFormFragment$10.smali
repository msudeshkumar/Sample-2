.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->completeSession(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
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
        "Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;",
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
    .line 512
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 529
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    const v2, 0x7f07003d

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 530
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
            "Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;>;"
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 517
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$10;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/paymentMethods/verify/Verify;->getData()Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->getId()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getPaymentMethod(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->access$600(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
