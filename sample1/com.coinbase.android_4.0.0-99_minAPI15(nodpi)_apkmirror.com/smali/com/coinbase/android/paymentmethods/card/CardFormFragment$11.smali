.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getPaymentMethod(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 560
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
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    const-string v2, "CardFormFragment"

    invoke-virtual {p1}, Lretrofit/Response;->errorBody()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;->getData()Lcom/coinbase/v2/models/paymentMethods/Data;

    move-result-object v2

    iput-object v2, v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 545
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-boolean v2, v2, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->requiresCDV:Z

    if-eqz v2, :cond_1

    .line 546
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 548
    .local v0, "gson":Lcom/google/gson/Gson;
    const-string v2, "payment_method"

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v2, "manual"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    const/16 v3, 0x68

    invoke-virtual {v2, v1, v3}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 553
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$11;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->buyIfPhoneIsVerified()V

    goto :goto_0
.end method
