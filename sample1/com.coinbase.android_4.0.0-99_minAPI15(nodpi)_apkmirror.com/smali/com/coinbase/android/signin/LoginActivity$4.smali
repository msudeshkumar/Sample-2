.class Lcom/coinbase/android/signin/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/signin/LoginActivity;->getAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/coinbase/api/internal/models/auth/Auth;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/signin/LoginActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/signin/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/signin/LoginActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/signin/LoginActivity;->onError(Ljava/lang/Exception;)V

    .line 374
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
            "Lcom/coinbase/api/internal/models/auth/Auth;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/api/internal/models/auth/Auth;>;"
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 331
    invoke-static {p1, p2}, Lcom/coinbase/android/signin/LoginActivity;->getError(Lretrofit/Response;Lretrofit/Retrofit;)Lcom/coinbase/api/internal/models/auth/Error;

    move-result-object v1

    .line 332
    .local v1, "error":Lcom/coinbase/api/internal/models/auth/Error;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/auth/Error;->getError()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 359
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coinbase/android/signin/LoginActivity;->onError(Ljava/lang/Exception;)V

    .line 369
    .end local v1    # "error":Lcom/coinbase/api/internal/models/auth/Error;
    :goto_1
    return-void

    .line 332
    .restart local v1    # "error":Lcom/coinbase/api/internal/models/auth/Error;
    :sswitch_0
    const-string v4, "2fa_required"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "2fa_incorrect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "incorrect_credentials"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 334
    :pswitch_0
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/auth/Error;->get2faAuthentication()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/coinbase/android/signin/LoginActivity;->m2faType:Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v3, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v3, v3, Lcom/coinbase/android/signin/LoginActivity;->m2faType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coinbase/android/signin/LoginActivity;->onTwoFactorRequired(Ljava/lang/String;)V

    goto :goto_1

    .line 340
    :pswitch_1
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v3, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    iget-object v3, v3, Lcom/coinbase/android/signin/LoginActivity;->m2faType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/coinbase/android/signin/LoginActivity;->onTwoFactorRequired(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :pswitch_2
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v2}, Lcom/coinbase/android/signin/LoginActivity;->onCredentialsIncorrect()V

    goto :goto_1

    .line 367
    .end local v1    # "error":Lcom/coinbase/api/internal/models/auth/Error;
    :cond_1
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/auth/Auth;

    .line 368
    .local v0, "auth":Lcom/coinbase/api/internal/models/auth/Auth;
    iget-object v2, p0, Lcom/coinbase/android/signin/LoginActivity$4;->this$0:Lcom/coinbase/android/signin/LoginActivity;

    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/auth/Auth;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coinbase/android/signin/LoginActivity;->startSignin(Ljava/lang/String;)V

    goto :goto_1

    .line 332
    :sswitch_data_0
    .sparse-switch
        -0x5f20569e -> :sswitch_2
        0x519bbf31 -> :sswitch_0
        0x64095653 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
