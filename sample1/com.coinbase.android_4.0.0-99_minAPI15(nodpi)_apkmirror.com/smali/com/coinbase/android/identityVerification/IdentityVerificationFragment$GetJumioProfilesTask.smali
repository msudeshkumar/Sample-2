.class Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "IdentityVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetJumioProfilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    .line 47
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 48
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
    .line 44
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->call()Ljava/util/List;

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
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getJumioProfiles()Lcom/coinbase/api/internal/entity/JumioProfilesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->getJumioProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v0, v0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 75
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
    .line 79
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 80
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mTask:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;

    .line 81
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
    .line 44
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "jumioProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfile;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->clear()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/JumioProfile;

    .line 61
    .local v0, "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v2, v2, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    invoke-virtual {v2, v0}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 63
    .end local v0    # "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->notifyDataSetChanged()V

    .line 65
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mAdapter:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;

    invoke-virtual {v1}, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$JumioProfileAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_1
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment$GetJumioProfilesTask;->this$0:Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/identityVerification/IdentityVerificationFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
