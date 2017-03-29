.class public Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;
.super Ljava/lang/Object;
.source "DeletePaymentMethodTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;
    }
.end annotation


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private listener:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field paymentMethodId:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->paymentMethodId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->listener:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;

    .line 43
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 44
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;)Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->listener:Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$DeletePaymentMethodListener;

    return-object v0
.end method


# virtual methods
.method public deletePaymentMethod()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->context:Landroid/content/Context;

    const v3, 0x7f0700ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 50
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;->paymentMethodId:Ljava/lang/String;

    new-instance v2, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask$1;-><init>(Lcom/coinbase/android/paymentmethods/DeletePaymentMethodTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->deletePaymentmethod(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 81
    return-void
.end method
