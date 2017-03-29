.class Lcom/coinbase/api/internal/CoinbaseInternal$21;
.super Ljava/lang/Object;
.source "CoinbaseInternal.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/api/internal/CoinbaseInternal;->createBillingAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
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
.field final synthetic this$0:Lcom/coinbase/api/internal/CoinbaseInternal;

.field final synthetic val$callback:Lretrofit/Callback;


# direct methods
.method constructor <init>(Lcom/coinbase/api/internal/CoinbaseInternal;Lretrofit/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/api/internal/CoinbaseInternal;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/coinbase/api/internal/CoinbaseInternal$21;->this$0:Lcom/coinbase/api/internal/CoinbaseInternal;

    iput-object p2, p0, Lcom/coinbase/api/internal/CoinbaseInternal$21;->val$callback:Lretrofit/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 839
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$21;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$21;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 841
    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 1
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
    .line 833
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;>;"
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$21;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$21;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V

    .line 835
    :cond_0
    return-void
.end method
