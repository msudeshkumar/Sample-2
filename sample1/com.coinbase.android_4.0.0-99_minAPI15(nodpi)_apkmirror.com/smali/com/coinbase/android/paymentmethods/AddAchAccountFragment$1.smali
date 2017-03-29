.class Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;
.super Ljava/lang/Object;
.source "AddAchAccountFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->createAchAccountManually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
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
            "Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/paymentMethods/PaymentMethod;>;"
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 49
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

    const v2, 0x7f07004a

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/AddAchAccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
