.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$7;
.super Ljava/lang/Object;
.source "PaymentMethodsFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getAvailablePaymentMethods()V
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
        "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$7;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 410
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
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;->getData()Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethods;->getData()Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;->getAvailablePaymentMethods()Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "availablePaymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;>;"
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$7;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->setUpAvailablePaymentMethods(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->access$100(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;Ljava/util/List;)V

    .line 405
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$7;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->setUpVerificationRequirements(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->access$200(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;Ljava/util/List;)V

    goto :goto_0
.end method
