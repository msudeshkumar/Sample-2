.class Lcom/coinbase/android/phone/DeletePhoneTask$1;
.super Ljava/lang/Object;
.source "DeletePhoneTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/phone/DeletePhoneTask;->deletePhoneNumber()V
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
.field final synthetic this$0:Lcom/coinbase/android/phone/DeletePhoneTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/phone/DeletePhoneTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/phone/DeletePhoneTask;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v0, v0, Lcom/coinbase/android/phone/DeletePhoneTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v0, v0, Lcom/coinbase/android/phone/DeletePhoneTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v0, v0, Lcom/coinbase/android/phone/DeletePhoneTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 89
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
            "Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/phoneNumber/PhoneNumber;>;"
    iget-object v3, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v3, v3, Lcom/coinbase/android/phone/DeletePhoneTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v3, v3, Lcom/coinbase/android/phone/DeletePhoneTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 62
    invoke-static {p1, p2}, Lcom/coinbase/android/utils/Utils;->getErrors(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/v2/models/errors/Errors;

    move-result-object v1

    .line 63
    .local v1, "errors":Lcom/coinbase/v2/models/errors/Errors;
    const/4 v2, 0x0

    .line 64
    .local v2, "tfaRequired":Z
    invoke-virtual {v1}, Lcom/coinbase/v2/models/errors/Errors;->getErrors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/errors/ErrorBody;

    .line 65
    .local v0, "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/errors/ErrorBody;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "two_factor_required"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    iget-object v3, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    # getter for: Lcom/coinbase/android/phone/DeletePhoneTask;->mId:Ljava/lang/String;
    invoke-static {v3}, Lcom/coinbase/android/phone/DeletePhoneTask;->access$000(Lcom/coinbase/android/phone/DeletePhoneTask;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    # getter for: Lcom/coinbase/android/phone/DeletePhoneTask;->isVerified:Z
    invoke-static {v4}, Lcom/coinbase/android/phone/DeletePhoneTask;->access$100(Lcom/coinbase/android/phone/DeletePhoneTask;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->newInstance(Ljava/lang/String;Z)Lcom/coinbase/android/phone/DeletePhoneNumberFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v4, v4, Lcom/coinbase/android/phone/DeletePhoneTask;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 68
    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "delete"

    invoke-virtual {v3, v4, v5}, Lcom/coinbase/android/phone/DeletePhoneNumberFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    .line 76
    .end local v0    # "errorBody":Lcom/coinbase/v2/models/errors/ErrorBody;
    :cond_2
    if-eqz v2, :cond_3

    .line 81
    .end local v1    # "errors":Lcom/coinbase/v2/models/errors/Errors;
    .end local v2    # "tfaRequired":Z
    :goto_0
    return-void

    .line 80
    :cond_3
    iget-object v3, p0, Lcom/coinbase/android/phone/DeletePhoneTask$1;->this$0:Lcom/coinbase/android/phone/DeletePhoneTask;

    iget-object v3, v3, Lcom/coinbase/android/phone/DeletePhoneTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/coinbase/android/event/PhoneNumbersUpdatedEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
