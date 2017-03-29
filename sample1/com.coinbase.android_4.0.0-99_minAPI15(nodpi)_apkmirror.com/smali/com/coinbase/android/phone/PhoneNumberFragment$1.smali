.class Lcom/coinbase/android/phone/PhoneNumberFragment$1;
.super Ljava/lang/Object;
.source "PhoneNumberFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/PhoneNumberFragment;->getPhoneNumbers()V
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
        "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/PhoneNumberFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/PhoneNumberFragment;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/PhoneNumberFragment;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 5
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 45
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/phone/PhoneNumberFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 67
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->clear()V

    .line 56
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumbers;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .line 57
    .local v0, "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    iget-object v2, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v2, v2, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v2, v0}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 59
    .end local v0    # "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->notifyDataSetChanged()V

    .line 61
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mAdapter:Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/phone/PhoneNumberFragment$PhoneNumberAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mEmpty:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/coinbase/android/phone/PhoneNumberFragment$1;->this$0:Lcom/coinbase/android/phone/PhoneNumberFragment;

    iget-object v1, v1, Lcom/coinbase/android/phone/PhoneNumberFragment;->mEmpty:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
