.class public Lcom/coinbase/api/internal/models/priceCharts/PriceChart;
.super Ljava/lang/Object;
.source "PriceChart.java"


# instance fields
.field private data:Lcom/coinbase/api/internal/models/priceCharts/Data;
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/api/internal/models/priceCharts/Data;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/api/internal/models/priceCharts/PriceChart;->data:Lcom/coinbase/api/internal/models/priceCharts/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/api/internal/models/priceCharts/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/api/internal/models/priceCharts/Data;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/coinbase/api/internal/models/priceCharts/PriceChart;->data:Lcom/coinbase/api/internal/models/priceCharts/Data;

    .line 32
    return-void
.end method
