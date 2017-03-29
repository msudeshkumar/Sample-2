.class Lcom/coinbase/android/quickstart/QuickstartManager$3;
.super Ljava/lang/Object;
.source "QuickstartManager.java"

# interfaces
.implements Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/quickstart/QuickstartManager;->showCdvVerification(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/quickstart/QuickstartManager;Landroid/app/ProgressDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/quickstart/QuickstartManager;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->this$0:Lcom/coinbase/android/quickstart/QuickstartManager;

    iput-object p2, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onFinally(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/paymentMethods/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/paymentMethods/Data;>;"
    iget-object v3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "didFindCDV":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/v2/models/paymentMethods/Data;

    .line 407
    .local v2, "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    invoke-virtual {v2}, Lcom/coinbase/v2/models/paymentMethods/Data;->getCdvStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    move-result-object v4

    sget-object v5, Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;->IN_PROGRESS:Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;

    if-ne v4, v5, :cond_0

    .line 411
    iget-object v3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$activity:Landroid/app/Activity;

    new-instance v4, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;

    invoke-direct {v4, p0, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$3$1;-><init>(Lcom/coinbase/android/quickstart/QuickstartManager$3;Lcom/coinbase/v2/models/paymentMethods/Data;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    const/4 v0, 0x1

    .line 426
    .end local v2    # "method":Lcom/coinbase/v2/models/paymentMethods/Data;
    :cond_1
    if-nez v0, :cond_2

    .line 430
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$activity:Landroid/app/Activity;

    const-class v4, Lcom/coinbase/android/paymentmethods/PaymentMethodsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 431
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 433
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method
