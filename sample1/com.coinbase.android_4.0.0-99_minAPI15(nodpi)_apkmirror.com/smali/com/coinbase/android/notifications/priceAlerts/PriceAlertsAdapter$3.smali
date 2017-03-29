.class Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$3;
.super Ljava/lang/Object;
.source "PriceAlertsAdapter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;->createPriceAlert(Lcom/coinbase/android/notifications/priceAlerts/LocalPriceAlert;)V
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
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter$3;->this$0:Lcom/coinbase/android/notifications/priceAlerts/PriceAlertsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 151
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
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
    .line 146
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    return-void
.end method
