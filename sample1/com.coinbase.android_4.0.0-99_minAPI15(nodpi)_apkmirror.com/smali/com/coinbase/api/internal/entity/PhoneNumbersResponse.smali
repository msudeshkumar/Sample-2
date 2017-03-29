.class public Lcom/coinbase/api/internal/entity/PhoneNumbersResponse;
.super Lcom/coinbase/api/internal/entity/ResponseV2;
.source "PhoneNumbersResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x5836b0f1911cdfa8L


# instance fields
.field _data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/PhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/coinbase/api/internal/entity/ResponseV2;-><init>()V

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
            "Lcom/coinbase/api/internal/entity/PhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/PhoneNumbersResponse;->_data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/PhoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/PhoneNumber;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/PhoneNumbersResponse;->_data:Ljava/util/List;

    .line 17
    return-void
.end method
