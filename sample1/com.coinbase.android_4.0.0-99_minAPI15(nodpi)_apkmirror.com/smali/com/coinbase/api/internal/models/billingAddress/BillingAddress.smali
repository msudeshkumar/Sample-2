.class public Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;
.super Ljava/lang/Object;
.source "BillingAddress.java"


# instance fields
.field private data:Lcom/coinbase/api/internal/models/billingAddress/Data;
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
.method public getData()Lcom/coinbase/api/internal/models/billingAddress/Data;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;->data:Lcom/coinbase/api/internal/models/billingAddress/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/api/internal/models/billingAddress/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/api/internal/models/billingAddress/Data;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/coinbase/api/internal/models/billingAddress/BillingAddress;->data:Lcom/coinbase/api/internal/models/billingAddress/Data;

    .line 30
    return-void
.end method
