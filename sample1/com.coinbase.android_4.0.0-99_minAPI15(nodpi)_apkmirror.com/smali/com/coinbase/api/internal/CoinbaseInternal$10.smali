.class Lcom/coinbase/api/internal/CoinbaseInternal$10;
.super Ljava/lang/Object;
.source "CoinbaseInternal.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/api/internal/CoinbaseInternal;->deletePriceAlert(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)V
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
        "Ljava/lang/Void;",
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
    .line 627
    iput-object p1, p0, Lcom/coinbase/api/internal/CoinbaseInternal$10;->this$0:Lcom/coinbase/api/internal/CoinbaseInternal;

    iput-object p2, p0, Lcom/coinbase/api/internal/CoinbaseInternal$10;->val$callback:Lretrofit/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$10;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$10;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 640
    :cond_0
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
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$10;->val$callback:Lretrofit/Callback;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/coinbase/api/internal/CoinbaseInternal$10;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1, p2}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V

    .line 633
    :cond_0
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Price alert deleted"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 634
    return-void
.end method
