.class Lcom/coinbase/android/signin/StateDisclosureActivity$10;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->proceed(Ljava/lang/Runnable;)V
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
        "Lcom/coinbase/api/internal/models/address/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

.field final synthetic val$completion:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/StateDisclosureActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iput-object p2, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
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
            "Lcom/coinbase/api/internal/models/address/Address;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/address/Address;>;"
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 282
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->val$completion:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$10;->val$completion:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
