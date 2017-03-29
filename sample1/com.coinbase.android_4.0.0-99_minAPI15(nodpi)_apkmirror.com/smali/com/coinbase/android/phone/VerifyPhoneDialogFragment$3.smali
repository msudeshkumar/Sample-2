.class Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;
.super Ljava/lang/Object;
.source "VerifyPhoneDialogFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->createPhoneNumber(Ljava/lang/String;)V
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
        "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    iput-object p2, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 157
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
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/coinbase/android/utils/Utils;->showRetrofitErrorMessage(Lretrofit/Response;Lretrofit/Retrofit;Landroid/content/Context;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Phone number verified manually"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;

    iget-object v0, v0, Lcom/coinbase/android/phone/VerifyPhoneDialogFragment;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    const v2, 0x7f07019e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
