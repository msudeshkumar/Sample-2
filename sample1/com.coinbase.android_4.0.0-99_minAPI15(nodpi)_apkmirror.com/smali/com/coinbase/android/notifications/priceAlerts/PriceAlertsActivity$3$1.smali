.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3$1;
.super Ljava/lang/Object;
.source "PriceAlertsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;->run()V
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
.field final synthetic this$1:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3$1;->this$1:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 129
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
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "create device token"

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "create device token"

    const-string v1, "Gcm token successfully created"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
