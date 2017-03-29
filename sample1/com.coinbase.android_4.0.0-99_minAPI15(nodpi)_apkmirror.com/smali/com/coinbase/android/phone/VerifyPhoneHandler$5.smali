.class Lcom/coinbase/android/phone/VerifyPhoneHandler$5;
.super Ljava/lang/Object;
.source "VerifyPhoneHandler.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/VerifyPhoneHandler;->addPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

.field final synthetic val$countryCode:Ljava/lang/String;

.field final synthetic val$phone:Ljava/lang/String;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iput-object p2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$countryCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$token:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$600(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 8
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
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    const/4 v7, 0x0

    .line 235
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    invoke-static {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    invoke-static {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 244
    :cond_0
    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrors(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/v2/models/errors/Errors;

    move-result-object v1

    .line 246
    .local v1, "errors":Lcom/coinbase/v2/models/errors/Errors;
    invoke-virtual {v1}, Lcom/coinbase/v2/models/errors/Errors;->getErrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/errors/ErrorBody;

    .line 247
    .local v0, "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/errors/ErrorBody;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "two_factor_required"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    iget-object v4, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$phone:Ljava/lang/String;

    iget-object v5, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$countryCode:Ljava/lang/String;

    invoke-virtual {v3, v7, v4, v7, v5}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->showVerifyPhoneDialogFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v0    # "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    .end local v1    # "errors":Lcom/coinbase/v2/models/errors/Errors;
    :goto_0
    return-void

    .line 252
    .restart local v0    # "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    .restart local v1    # "errors":Lcom/coinbase/v2/models/errors/Errors;
    :cond_1
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v3}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$600(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/errors/ErrorBody;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 257
    .end local v0    # "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    .end local v1    # "errors":Lcom/coinbase/v2/models/errors/Errors;
    :cond_2
    const-string v3, "Coinbase"

    const-string v4, "Phone number added, now waiting for SMS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;

    invoke-virtual {v3}, Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;->getData()Lcom/coinbase/api/internal/models/phoneNumber/Data;

    move-result-object v2

    .line 260
    .local v2, "number":Lcom/coinbase/api/internal/models/phoneNumber/Data;
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # setter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mPhoneNumber:Lcom/coinbase/api/internal/models/phoneNumber/Data;
    invoke-static {v3, v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$202(Lcom/coinbase/android/phone/VerifyPhoneHandler;Lcom/coinbase/api/internal/models/phoneNumber/Data;)Lcom/coinbase/api/internal/models/phoneNumber/Data;

    .line 262
    iget-object v3, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/phoneNumber/Data;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$phone:Ljava/lang/String;

    iget-object v6, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$5;->val$token:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->showVerifyPhoneDialogFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
