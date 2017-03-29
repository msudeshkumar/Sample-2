.class public Lcom/coinbase/android/task/SyncAccountsTask;
.super Ljava/lang/Object;
.source "SyncAccountsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field protected dbManager:Lcom/coinbase/android/db/DatabaseManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field loginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/coinbase/android/task/SyncAccountsTask;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    .line 56
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 57
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/task/SyncAccountsTask;)Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/task/SyncAccountsTask;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coinbase/android/task/SyncAccountsTask;Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/task/SyncAccountsTask;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/task/SyncAccountsTask;->popAccountInList(Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;

    move-result-object v0

    return-object v0
.end method

.method private popAccountInList(Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    .locals 3
    .param p2, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coinbase/v2/models/account/Data;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    if-eqz p1, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 158
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public syncAccounts()V
    .locals 3

    .prologue
    .line 63
    iget-object v1, p0, Lcom/coinbase/android/task/SyncAccountsTask;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->isSignedIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/coinbase/android/task/SyncAccountsTask;->mListener:Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;

    invoke-interface {v1}, Lcom/coinbase/android/task/SyncAccountsTask$SyncAccountsListener;->onPreExecute()V

    .line 70
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v0, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "limit"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/coinbase/android/task/SyncAccountsTask;->loginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/task/SyncAccountsTask$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/task/SyncAccountsTask$1;-><init>(Lcom/coinbase/android/task/SyncAccountsTask;)V

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getAccounts(Ljava/util/HashMap;Lretrofit/Callback;)Lretrofit/Call;

    goto :goto_0
.end method
