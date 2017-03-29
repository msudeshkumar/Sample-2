.class Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "JumioDocumentScanFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateJumioProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lcom/coinbase/api/internal/entity/JumioProfileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    .line 293
    invoke-direct {p0, p2}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 294
    iput-object p3, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->mParams:Ljava/util/HashMap;

    .line 295
    return-void
.end method


# virtual methods
.method public call()Lcom/coinbase/api/internal/entity/JumioProfileResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->mParams:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->createJumioProfile(Ljava/util/HashMap;)Lcom/coinbase/api/internal/entity/JumioProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->call()Lcom/coinbase/api/internal/entity/JumioProfileResponse;

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
    .line 309
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->context:Landroid/content/Context;

    const v1, 0x7f070132

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 314
    :cond_0
    return-void
.end method

.method protected onFinally()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-super {p0}, Lcom/coinbase/android/task/ApiTask;->onFinally()V

    .line 320
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    iget-object v2, v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->mTask:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;

    .line 325
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 326
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "SHOULD_NAVIGATE_TO_DEBIT"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->context:Landroid/content/Context;

    const-class v3, Lcom/coinbase/android/paymentmethods/card/CardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v2, v0}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->startActivity(Landroid/content/Intent;)V

    .line 330
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->this$0:Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 336
    :goto_0
    return-void

    .line 333
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->context:Landroid/content/Context;

    const-class v3, Lcom/coinbase/android/identityVerification/JumioCompleteFragment;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->context:Landroid/content/Context;

    check-cast v2, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;

    invoke-interface {v2, v0}, Lcom/coinbase/android/identityVerification/IJumioProfilePresenter;->verificationProfileAction(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onSuccess(Lcom/coinbase/api/internal/entity/JumioProfileResponse;)V
    .locals 0
    .param p1, "jumioProfileResponse"    # Lcom/coinbase/api/internal/entity/JumioProfileResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
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
    .line 288
    check-cast p1, Lcom/coinbase/api/internal/entity/JumioProfileResponse;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/identityVerification/JumioDocumentScanFragment$CreateJumioProfileTask;->onSuccess(Lcom/coinbase/api/internal/entity/JumioProfileResponse;)V

    return-void
.end method
