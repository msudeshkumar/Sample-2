.class public Lcom/coinbase/v2/models/transactions/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# instance fields
.field private data:Lcom/coinbase/v2/models/transactions/Data;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/v2/models/transactions/Data;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Transaction;->data:Lcom/coinbase/v2/models/transactions/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/v2/models/transactions/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/v2/models/transactions/Data;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Transaction;->data:Lcom/coinbase/v2/models/transactions/Data;

    .line 31
    return-void
.end method
