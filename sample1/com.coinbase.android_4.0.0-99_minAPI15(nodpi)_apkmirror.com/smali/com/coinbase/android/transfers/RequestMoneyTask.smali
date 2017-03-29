.class Lcom/coinbase/android/transfers/RequestMoneyTask;
.super Ljava/lang/Object;
.source "RequestMoneyTask.java"


# instance fields
.field context:Landroid/content/Context;

.field dialog:Landroid/app/ProgressDialog;

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 44
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/transfers/RequestMoneyTask;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/transfers/RequestMoneyTask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/coinbase/android/transfers/RequestMoneyTask;->handleRequestError(Ljava/lang/String;)V

    return-void
.end method

.method private handleRequestError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public requestMoney(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->context:Landroid/content/Context;

    const v3, 0x7f070274

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->dialog:Landroid/app/ProgressDialog;

    .line 50
    iget-object v0, p0, Lcom/coinbase/android/transfers/RequestMoneyTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    new-instance v1, Lcom/coinbase/android/transfers/RequestMoneyTask$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/coinbase/android/transfers/RequestMoneyTask$1;-><init>(Lcom/coinbase/android/transfers/RequestMoneyTask;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->requestMoney(Ljava/lang/String;Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    .line 83
    return-void
.end method
