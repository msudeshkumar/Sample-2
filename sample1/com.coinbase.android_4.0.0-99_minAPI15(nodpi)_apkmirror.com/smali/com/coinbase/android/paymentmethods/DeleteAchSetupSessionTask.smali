.class public Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "DeleteAchSetupSessionTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->mSessionId:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->deleteAchSetupSession(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onException(Ljava/lang/Exception;)V

    .line 49
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->context:Landroid/content/Context;

    const v2, 0x7f0700d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p1, Lcom/coinbase/v1/exception/CoinbaseException;

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    return-void
.end method

.method protected onFinally()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 59
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onPreExecute()V

    .line 30
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->context:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->context:Landroid/content/Context;

    const v3, 0x7f0700ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 31
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/coinbase/android/task/ApiTask;->onSuccess(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->context:Landroid/content/Context;

    const v2, 0x7f0701ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
