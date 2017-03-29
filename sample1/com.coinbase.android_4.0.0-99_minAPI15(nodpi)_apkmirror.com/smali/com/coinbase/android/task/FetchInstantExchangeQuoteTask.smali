.class public Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;
.super Lcom/coinbase/android/task/ApiTask;
.source "FetchInstantExchangeQuoteTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/task/ApiTask",
        "<",
        "Lcom/coinbase/api/internal/entity/InstantExchangeQuote;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAmount:Lorg/joda/money/Money;

.field protected mCommit:Z

.field protected mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/joda/money/Money;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "amount"    # Lorg/joda/money/Money;
    .param p4, "commit"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/coinbase/android/task/ApiTask;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->mId:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->mAmount:Lorg/joda/money/Money;

    .line 21
    iput-boolean p4, p0, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->mCommit:Z

    .line 22
    return-void
.end method


# virtual methods
.method public call()Lcom/coinbase/api/internal/entity/InstantExchangeQuote;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->mAmount:Lorg/joda/money/Money;

    iget-boolean v3, p0, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->mCommit:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInstantExchangeQuote(Ljava/lang/String;Lorg/joda/money/Money;Z)Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

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
    .line 12
    invoke-virtual {p0}, Lcom/coinbase/android/task/FetchInstantExchangeQuoteTask;->call()Lcom/coinbase/api/internal/entity/InstantExchangeQuote;

    move-result-object v0

    return-object v0
.end method
