.class public Lcom/coinbase/v1/entity/TransfersResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "TransfersResponse.java"


# static fields
.field private static final serialVersionUID:J = -0xb45d7beabf72ccaL


# instance fields
.field private _transfers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Transfer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransfers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Transfer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransfersResponse;->_transfers:Ljava/util/List;

    return-object v0
.end method

.method public setTransfers(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/TransfersLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Transfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "transfers":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Transfer;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransfersResponse;->_transfers:Ljava/util/List;

    .line 22
    return-void
.end method
