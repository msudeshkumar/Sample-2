.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->processPaymentCard(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

.field final synthetic val$cardSetup:Lcom/coinbase/api/internal/models/paymentMethods/Data;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->val$cardSetup:Lcom/coinbase/api/internal/models/paymentMethods/Data;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 485
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 486
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
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
    .line 474
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 476
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 481
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$9;->val$cardSetup:Lcom/coinbase/api/internal/models/paymentMethods/Data;

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->completeSession(Lcom/coinbase/api/internal/models/paymentMethods/Data;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->access$500(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/api/internal/models/paymentMethods/Data;)V

    goto :goto_0
.end method
