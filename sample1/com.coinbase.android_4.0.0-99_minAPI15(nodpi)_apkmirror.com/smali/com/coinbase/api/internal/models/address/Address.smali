.class public Lcom/coinbase/api/internal/models/address/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private data:Lcom/coinbase/api/internal/models/address/Data;
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
.method public getData()Lcom/coinbase/api/internal/models/address/Data;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/api/internal/models/address/Address;->data:Lcom/coinbase/api/internal/models/address/Data;

    return-object v0
.end method

.method public setData(Lcom/coinbase/api/internal/models/address/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/coinbase/api/internal/models/address/Data;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/coinbase/api/internal/models/address/Address;->data:Lcom/coinbase/api/internal/models/address/Data;

    .line 31
    return-void
.end method
