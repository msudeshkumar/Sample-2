.class public Lcom/coinbase/android/accounts/CreateAccountTask;
.super Ljava/lang/Object;
.source "CreateAccountTask.java"


# instance fields
.field bus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field context:Landroid/content/Context;

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field name:Ljava/lang/String;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->name:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 43
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public createAccount()V
    .locals 5

    .prologue
    .line 47
    iget-object v1, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->context:Landroid/content/Context;

    const v4, 0x7f0700db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->progressDialog:Landroid/app/ProgressDialog;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "name"

    iget-object v2, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/coinbase/android/accounts/CreateAccountTask;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/accounts/CreateAccountTask$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/accounts/CreateAccountTask$1;-><init>(Lcom/coinbase/android/accounts/CreateAccountTask;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->createAccount(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 74
    return-void
.end method
