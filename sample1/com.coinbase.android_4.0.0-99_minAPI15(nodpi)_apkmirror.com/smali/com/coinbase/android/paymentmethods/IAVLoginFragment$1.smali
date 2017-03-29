.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;
.super Ljava/lang/Object;
.source "IAVLoginFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 6
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAmountsForm:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneForm:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mAllDoneDetails:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    const v2, 0x7f0702c1

    invoke-virtual {v1, v2}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mPaymentMethod:Lcom/coinbase/v2/models/paymentMethods/Data;

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/Data;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/BankAccountsUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
