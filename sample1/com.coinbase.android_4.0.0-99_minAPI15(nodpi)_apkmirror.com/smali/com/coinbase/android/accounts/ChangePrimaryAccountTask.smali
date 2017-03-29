.class public Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;
.super Ljava/lang/Object;
.source "ChangePrimaryAccountTask.java"


# instance fields
.field context:Landroid/content/Context;

.field mAccountId:Ljava/lang/String;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mAccountId:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 38
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public setPrimaryAccount()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->context:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->context:Landroid/content/Context;

    const v3, 0x7f070282

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 43
    iget-object v0, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;->mAccountId:Ljava/lang/String;

    new-instance v2, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/accounts/ChangePrimaryAccountTask$1;-><init>(Lcom/coinbase/android/accounts/ChangePrimaryAccountTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->setAccountPrimary(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 63
    return-void
.end method
