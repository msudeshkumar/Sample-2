.class Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;
.super Ljava/lang/Object;
.source "GetPaymentMethodsTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V
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
        "Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    # getter for: Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    # getter for: Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;->onException()V

    .line 72
    :cond_0
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
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    # getter for: Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    # getter for: Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;->onException()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    # getter for: Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;->this$0:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    # getter for: Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    move-result-object v1

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/paymentMethods/PaymentMethods;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;->onFinally(Ljava/util/List;)V

    goto :goto_0
.end method
