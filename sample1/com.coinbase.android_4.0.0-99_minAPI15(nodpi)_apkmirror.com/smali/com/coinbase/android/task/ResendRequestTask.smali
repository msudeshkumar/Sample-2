.class public Lcom/coinbase/android/task/ResendRequestTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "ResendRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mTxId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "txId"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object p2, p0, Lcom/coinbase/android/task/ResendRequestTask;->mTxId:Ljava/lang/String;

    .line 11
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
    invoke-virtual {p0}, Lcom/coinbase/android/task/ResendRequestTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/coinbase/android/task/ResendRequestTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/task/ResendRequestTask;->mTxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->resendRequest(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
