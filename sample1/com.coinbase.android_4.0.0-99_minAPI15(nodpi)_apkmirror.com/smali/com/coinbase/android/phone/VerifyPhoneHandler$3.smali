.class Lcom/coinbase/android/phone/VerifyPhoneHandler$3;
.super Ljava/lang/Object;
.source "VerifyPhoneHandler.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/VerifyPhoneHandler;->verifyPhoneNumber(Ljava/lang/String;)V
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


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/VerifyPhoneHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/VerifyPhoneHandler;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-virtual {v0}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->checkIfSmsWasReceived()V

    .line 170
    iget-object v0, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v0}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$600(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 172
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
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$000(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    invoke-virtual {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->checkIfSmsWasReceived()V

    .line 148
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrors(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/v2/models/errors/Errors;

    move-result-object v1

    .line 150
    .local v1, "errors":Lcom/coinbase/v2/models/errors/Errors;
    invoke-virtual {v1}, Lcom/coinbase/v2/models/errors/Errors;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/errors/ErrorBody;

    .line 151
    .local v0, "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$600(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/errors/ErrorBody;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 161
    .end local v0    # "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    .end local v1    # "errors":Lcom/coinbase/v2/models/errors/Errors;
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mCaller:Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$100(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;

    move-result-object v2

    invoke-interface {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler$VerifyPhoneCaller;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone_verified"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/coinbase/android/utils/PreferenceUtils;->putPrefsBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 157
    iget-object v2, p0, Lcom/coinbase/android/phone/VerifyPhoneHandler$3;->this$0:Lcom/coinbase/android/phone/VerifyPhoneHandler;

    # getter for: Lcom/coinbase/android/phone/VerifyPhoneHandler;->mBus:Lcom/squareup/otto/Bus;
    invoke-static {v2}, Lcom/coinbase/android/phone/VerifyPhoneHandler;->access$600(Lcom/coinbase/android/phone/VerifyPhoneHandler;)Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 158
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v2

    const-string v3, "Event - Phone number verified automatically"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
