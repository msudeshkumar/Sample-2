.class public Lcom/coinbase/api/internal/models/priceCharts/Price;
.super Ljava/lang/Object;
.source "Price.java"


# instance fields
.field private price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
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
.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/api/internal/models/priceCharts/Price;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/api/internal/models/priceCharts/Price;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/api/internal/models/priceCharts/Price;->price:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/api/internal/models/priceCharts/Price;->time:Ljava/lang/String;

    .line 53
    return-void
.end method
