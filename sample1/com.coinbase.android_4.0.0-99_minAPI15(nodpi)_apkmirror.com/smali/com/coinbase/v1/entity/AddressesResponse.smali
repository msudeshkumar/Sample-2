.class public Lcom/coinbase/v1/entity/AddressesResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "AddressesResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x2dcf20d1ccccbd7cL


# instance fields
.field private _addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Address;",
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
.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/coinbase/v1/entity/AddressesResponse;->_addresses:Ljava/util/List;

    return-object v0
.end method

.method public setAddresses(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/AddressesLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Address;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/AddressesResponse;->_addresses:Ljava/util/List;

    .line 22
    return-void
.end method
