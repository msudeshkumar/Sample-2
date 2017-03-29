.class Lcom/coinbase/android/signin/AcceptTermsActivity$4;
.super Ljava/lang/Object;
.source "AcceptTermsActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/AcceptTermsActivity;->setTNCDescription()V
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
        "Lcom/coinbase/api/internal/models/agreement/UserAgreement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/AcceptTermsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/AcceptTermsActivity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Lcom/coinbase/android/signin/AcceptTermsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 113
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
            "Lcom/coinbase/api/internal/models/agreement/UserAgreement;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/agreement/UserAgreement;>;"
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v0, v0, Lcom/coinbase/android/signin/AcceptTermsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 99
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, v0, Lcom/coinbase/android/signin/AcceptTermsActivity;->mTncDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/agreement/UserAgreement;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/agreement/UserAgreement;->getData()Lcom/coinbase/api/internal/models/agreement/Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/agreement/Data;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, p0, Lcom/coinbase/android/signin/AcceptTermsActivity$4;->this$0:Lcom/coinbase/android/signin/AcceptTermsActivity;

    iget-object v1, v1, Lcom/coinbase/android/signin/AcceptTermsActivity;->mTncDescription:Landroid/widget/TextView;

    # invokes: Lcom/coinbase/android/signin/AcceptTermsActivity;->stripUnderlines(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/signin/AcceptTermsActivity;->access$200(Lcom/coinbase/android/signin/AcceptTermsActivity;Landroid/widget/TextView;)V

    goto :goto_0
.end method
