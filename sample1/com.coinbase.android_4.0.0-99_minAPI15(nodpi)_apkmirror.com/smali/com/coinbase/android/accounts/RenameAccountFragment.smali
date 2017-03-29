.class public Lcom/coinbase/android/accounts/RenameAccountFragment;
.super Lcom/coinbase/android/dialog/InputTextDialogFragment;
.source "RenameAccountFragment.java"


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "RenameAccountFragment_AccountId"


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/coinbase/android/dialog/InputTextDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/coinbase/android/accounts/RenameAccountFragment;
    .locals 3
    .param p0, "accountId"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Lcom/coinbase/android/accounts/RenameAccountFragment;

    invoke-direct {v1}, Lcom/coinbase/android/accounts/RenameAccountFragment;-><init>()V

    .line 35
    .local v1, "f":Lcom/coinbase/android/accounts/RenameAccountFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "RenameAccountFragment_AccountId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v0}, Lcom/coinbase/android/accounts/RenameAccountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f070186

    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/RenameAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f0701ea

    invoke-virtual {p0, v0}, Lcom/coinbase/android/accounts/RenameAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/coinbase/android/dialog/InputTextDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/RenameAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/RenameAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RenameAccountFragment_AccountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment;->mAccountId:Ljava/lang/String;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/accounts/RenameAccountFragment;->mAccountId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RenameAccount needs account id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    return-void
.end method

.method public onSubmit(Ljava/lang/String;)V
    .locals 0
    .param p1, "enteredValue"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/coinbase/android/accounts/RenameAccountFragment;->renameAccount(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public renameAccount(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/coinbase/android/accounts/RenameAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const v4, 0x7f070282

    invoke-virtual {p0, v4}, Lcom/coinbase/android/accounts/RenameAccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 70
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/coinbase/android/accounts/RenameAccountFragment;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/accounts/RenameAccountFragment;->mAccountId:Ljava/lang/String;

    new-instance v4, Lcom/coinbase/android/accounts/RenameAccountFragment$1;

    invoke-direct {v4, p0, v1}, Lcom/coinbase/android/accounts/RenameAccountFragment$1;-><init>(Lcom/coinbase/android/accounts/RenameAccountFragment;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/coinbase/api/internal/CoinbaseInternal;->updateAccount(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 90
    return-void
.end method
