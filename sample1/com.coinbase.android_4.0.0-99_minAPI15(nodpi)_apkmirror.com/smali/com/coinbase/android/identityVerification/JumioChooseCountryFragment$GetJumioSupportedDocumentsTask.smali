.class Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "JumioChooseCountryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetJumioSupportedDocumentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioDocument;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    .line 52
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 53
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
    .line 49
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getJumioSupportedDocuments()Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioSupportedDocumentsResponse;->getJumioSupportedDocuments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mOuterContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 103
    return-void
.end method

.method protected onFinally()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 108
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mTask:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;

    .line 109
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
    .line 49
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioDocument;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "jumioDocuments":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioDocument;>;"
    const/4 v5, 0x0

    .line 62
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mProgress:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mOuterContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 65
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iput-object p1, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    .line 66
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v3}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "countryCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    new-instance v4, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask$1;-><init>(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v4, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v4, v4, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    # invokes: Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->createAdapter(Ljava/util/List;)V
    invoke-static {v3, v4}, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->access$000(Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;Ljava/util/List;)V

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, "selectedIndex":I
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mJumioDocuments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/entity/JumioDocument;

    .line 89
    .local v1, "doc":Lcom/coinbase/api/internal/entity/JumioDocument;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v1}, Lcom/coinbase/api/internal/entity/JumioDocument;->getCountry()Lcom/coinbase/api/internal/entity/JumioProfileCountry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coinbase/api/internal/entity/JumioProfileCountry;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    .end local v1    # "doc":Lcom/coinbase/api/internal/entity/JumioDocument;
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment$GetJumioSupportedDocumentsTask;->this$0:Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;

    iget-object v3, v3, Lcom/coinbase/android/identityVerification/JumioChooseCountryFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 96
    return-void

    .line 93
    .restart local v1    # "doc":Lcom/coinbase/api/internal/entity/JumioDocument;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 94
    goto :goto_0
.end method
