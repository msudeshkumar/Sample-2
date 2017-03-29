.class Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;
.super Ljava/lang/Object;
.source "ChangePrimaryAccountTask.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->setPrimaryAccount()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coinbase/android/utils/Utils;->showLongMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 2
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;->this$0:Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;

    iget-object v0, v0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 50
    :cond_0
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_1
    return-void
.end method
