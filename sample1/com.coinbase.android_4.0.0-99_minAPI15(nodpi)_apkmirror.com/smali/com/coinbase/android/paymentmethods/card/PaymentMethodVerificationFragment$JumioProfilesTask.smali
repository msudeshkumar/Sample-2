.class Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "PaymentMethodVerificationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;
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
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    .line 211
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 212
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
    .line 209
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->call()Ljava/util/List;

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
    .line 216
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/CoinbaseInternal;->getJumioProfiles()Lcom/coinbase/api/internal/entity/JumioProfilesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfilesResponse;->getJumioProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 234
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
    .line 238
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 240
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    # invokes: Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->setVerificationState(Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V
    invoke-static {v0, v1}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->access$000(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)V

    .line 244
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
    .line 209
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->onSuccess(Ljava/util/List;)V

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
    .line 221
    .local p1, "jumioProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfile;>;"
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/PaymentMethodUtils;->doesJumioProfilesContainType(Ljava/util/List;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v1, v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v0, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    invoke-static {p1, v0}, Lcom/coinbase/android/utils/PaymentMethodUtils;->doesJumioProfilesContainType(Ljava/util/List;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->PENDING:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v1, v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    sget-object v1, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    iput-object v1, v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    goto :goto_0
.end method
