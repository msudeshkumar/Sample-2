.class Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "CardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/card/CardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JumioProfilesTask"
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

.field verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    .line 83
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 80
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 84
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
    .line 79
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->call()Ljava/util/List;

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
    .line 93
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getJumioProfiles()Lcom/coinbase/api/internal/entity/JumioProfilesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->getJumioProfiles()Ljava/util/List;

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
    .line 112
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method protected onFinally()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 120
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    sget-object v3, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v2, v3, :cond_1

    .line 122
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardActivity;->createCardFormFragment()V
    invoke-static {v2}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->access$000(Lcom/coinbase/android/paymentmethods/card/CardActivity;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->JUMIO_STATUS:Ljava/lang/String;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-virtual {v3}, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-direct {v1}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;-><init>()V

    .line 127
    .local v1, "fragment":Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;
    invoke-virtual {v1, v0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0d00fe

    const-class v4, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    .line 130
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 131
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public onPreExecute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
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
    .line 79
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 2
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
    .line 98
    .local p1, "jumioProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfile;>;"
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/CardActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/PaymentMethodUtils;->doesJumioProfilesContainType(Ljava/util/List;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/PaymentMethodUtils;->doesJumioProfilesContainType(Ljava/util/List;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$JumioProfilesTask;->verificationStatus:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    goto :goto_0
.end method
