.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;
.super Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;
.source "PlaidAccountLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->onUserCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;->this$1:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;

    invoke-direct {p0, p2, p3}, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onFinally()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-super {p0}, Lcom/coinbase/android/paymentmethods/DeleteAchSetupSessionTask;->onFinally()V

    .line 453
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;->this$1:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2$1;->this$1:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginFragment$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 456
    :cond_0
    return-void
.end method
