.class Lcom/coinbase/android/deposits/SepaDepositFragment$2;
.super Ljava/lang/Object;
.source "SepaDepositFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/deposits/SepaDepositFragment;->getSepaDepositInfo()V
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
        "Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/deposits/SepaDepositFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/deposits/SepaDepositFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
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
            "Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/deposits/SepaDepositFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mProgressView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mDetailsView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/sepaDepositInfo/SepaDepositInfo;->getData()Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;

    move-result-object v0

    .line 111
    .local v0, "sepaInfo":Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mIban:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getIban()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mSwift:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getSwift()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mBankName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mBankAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getBankAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mBankCountryName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getBankCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mAccountNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mAccountAddress:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getAccountAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/coinbase/android/deposits/SepaDepositFragment$2;->this$0:Lcom/coinbase/android/deposits/SepaDepositFragment;

    iget-object v1, v1, Lcom/coinbase/android/deposits/SepaDepositFragment;->mReferenceId:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->getReference()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
