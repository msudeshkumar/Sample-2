.class public Lcom/coinbase/android/task/RefreshUserTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "RefreshUserTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/coinbase/android/task/RefreshUserTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/android/task/RefreshUserTask;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->refreshUser()Z

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method
