.class public Lcom/coinbase/v2/models/spotPrice/SpotPrice;
.super Ljava/lang/Object;
.source "SpotPrice.java"


# instance fields
.field private data:Lcom/coinbase/v2/models/spotPrice/Data;
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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/coinbase/v2/models/spotPrice/Data;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/coinbase/v2/models/spotPrice/SpotPrice;->data:Lcom/coinbase/v2/models/spotPrice/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/v2/models/spotPrice/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/v2/models/spotPrice/Data;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/coinbase/v2/models/spotPrice/SpotPrice;->data:Lcom/coinbase/v2/models/spotPrice/Data;

    .line 30
    return-void
.end method
