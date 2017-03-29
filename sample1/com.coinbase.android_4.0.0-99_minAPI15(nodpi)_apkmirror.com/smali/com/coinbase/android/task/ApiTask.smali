.class public abstract Lcom/coinbase/android/task/ApiTask;
.super Lroboguice/util/RoboAsyncTask;
.source "ApiTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lroboguice/util/RoboAsyncTask",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    .local p0, "this":Lcom/coinbase/android/task/ApiTask;, "Lcom/coinbase/android/task/ApiTask<TT;>;"
    invoke-direct {p0, p1}, Lroboguice/util/RoboAsyncTask;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/coinbase/android/task/ApiTask;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method protected getClient()Lcom/coinbase/api/internal/CoinbaseInternal;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/coinbase/android/task/ApiTask;, "Lcom/coinbase/android/task/ApiTask<TT;>;"
    iget-object v0, p0, Lcom/coinbase/android/task/ApiTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    return-object v0
.end method
