.class public Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;
.super Ljava/lang/Object;
.source "BillingAddresses.java"


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
            "Lcom/coinbase/api/internal/models/billingAddress/Data;",
            ">;"
        }
    .end annotation
.end field

.field private pagination:Lcom/coinbase/api/internal/models/Pagination;
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

    iput-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;->data:Ljava/util/List;

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
            "Lcom/coinbase/api/internal/models/billingAddress/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;->data:Ljava/util/List;

    return-object v0
.end method

.method public getPagination()Lcom/coinbase/api/internal/models/Pagination;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;->pagination:Lcom/coinbase/api/internal/models/Pagination;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/billingAddress/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/billingAddress/Data;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;->data:Ljava/util/List;

    .line 56
    return-void
.end method

.method public setPagination(Lcom/coinbase/api/internal/models/Pagination;)V
    .locals 0
    .param p1, "pagination"    # Lcom/coinbase/api/internal/models/Pagination;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddresses;->pagination:Lcom/coinbase/api/internal/models/Pagination;

    .line 38
    return-void
.end method
