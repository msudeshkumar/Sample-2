.class public Lcom/coinbase/v2/models/transactions/Transactions;
.super Ljava/lang/Object;
.source "Transactions.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Data;",
            ">;"
        }
    .end annotation
.end field

.field private pagination:Lcom/coinbase/v2/models/Pagination;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pagination"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/v2/models/transactions/Transactions;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Transactions;->data:Ljava/util/List;

    return-object v0
.end method

.method public getPagination()Lcom/coinbase/v2/models/Pagination;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Transactions;->pagination:Lcom/coinbase/v2/models/Pagination;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Data;>;"
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Transactions;->data:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setPagination(Lcom/coinbase/v2/models/Pagination;)V
    .locals 0
    .param p1, "pagination"    # Lcom/coinbase/v2/models/Pagination;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Transactions;->pagination:Lcom/coinbase/v2/models/Pagination;

    .line 38
    return-void
.end method
