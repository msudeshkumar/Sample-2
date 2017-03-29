.class Lcom/coinbase/android/accounts/RenameAccountFragment$1;
.super Ljava/lang/Object;
.source "RenameAccountFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/accounts/RenameAccountFragment;->renameAccount(Ljava/lang/String;)V
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
        "Lcom/coinbase/v2/models/account/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/accounts/RenameAccountFragment;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/coinbase/android/accounts/RenameAccountFragment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/accounts/RenameAccountFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->this$0:Lcom/coinbase/android/accounts/RenameAccountFragment;

    iput-object p2, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->this$0:Lcom/coinbase/android/accounts/RenameAccountFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/RenameAccountFragment;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 88
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
            "Lcom/coinbase/v2/models/account/Account;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/account/Account;>;"
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment$1;->this$0:Lcom/coinbase/android/accounts/RenameAccountFragment;

    iget-object v0, v0, Lcom/coinbase/android/accounts/RenameAccountFragment;->bus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/coinbase/android/event/RefreshRequestedEvent;

    invoke-direct {v1}, Lcom/coinbase/android/event/RefreshRequestedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
