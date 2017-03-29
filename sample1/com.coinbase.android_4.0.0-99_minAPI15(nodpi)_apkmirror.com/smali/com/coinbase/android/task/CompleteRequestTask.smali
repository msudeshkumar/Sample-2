.class public Lcom/coinbase/android/task/CompleteRequestTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "CompleteRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lcom/coinbase/v1/entity/Transaction;",
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
    .line 11
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p2, p0, Lcom/coinbase/android/task/CompleteRequestTask;->mTxId:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public call()Lcom/coinbase/v1/entity/Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/coinbase/android/task/CompleteRequestTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/task/CompleteRequestTask;->mTxId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coinbase/api/internal/CoinbaseInternal;->completeRequest(Ljava/lang/String;)Lcom/coinbase/v1/entity/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/coinbase/android/task/CompleteRequestTask;->call()Lcom/coinbase/v1/entity/Transaction;

    move-result-object v0

    return-object v0
.end method
