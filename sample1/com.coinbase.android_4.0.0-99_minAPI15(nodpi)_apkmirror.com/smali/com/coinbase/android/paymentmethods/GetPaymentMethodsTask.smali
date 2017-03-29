.class public Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;
.super Ljava/lang/Object;
.source "GetPaymentMethodsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    .line 44
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 45
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    return-object v0
.end method


# virtual methods
.method public getPaymentMethods()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->listener:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;

    invoke-interface {v1}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;->onPreExecute()V

    .line 52
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "limit"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$1;-><init>(Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getPaymentMethods(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 74
    return-void
.end method
