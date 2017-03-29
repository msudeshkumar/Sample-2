.class Lcom/coinbase/android/signin/StateDisclosureActivity$11;
.super Ljava/lang/Object;
.source "StateDisclosureActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/StateDisclosureActivity;->createFullAddress()V
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


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/StateDisclosureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/StateDisclosureActivity;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/StateDisclosureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 336
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
    .line 322
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/address/Address;>;"
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/StateDisclosureActivity;->bus:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/coinbase/android/signin/StateDisclosureActivity$11;->this$0:Lcom/coinbase/android/signin/StateDisclosureActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/signin/StateDisclosureActivity;->finish()V

    goto :goto_0
.end method
