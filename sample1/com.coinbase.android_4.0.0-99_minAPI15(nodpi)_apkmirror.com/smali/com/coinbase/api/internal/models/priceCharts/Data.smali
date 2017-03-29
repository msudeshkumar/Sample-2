.class public Lcom/coinbase/api/internal/models/priceCharts/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private prices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "prices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;"
        }
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

    iput-object v0, p0, Lcom/coinbase/api/internal/models/priceCharts/Data;->prices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/coinbase/api/internal/models/priceCharts/Data;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getPrices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/api/internal/models/priceCharts/Data;->prices:Ljava/util/List;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/coinbase/api/internal/models/priceCharts/Data;->currency:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPrices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/priceCharts/Price;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "prices":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/priceCharts/Price;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/priceCharts/Data;->prices:Ljava/util/List;

    .line 56
    return-void
.end method
