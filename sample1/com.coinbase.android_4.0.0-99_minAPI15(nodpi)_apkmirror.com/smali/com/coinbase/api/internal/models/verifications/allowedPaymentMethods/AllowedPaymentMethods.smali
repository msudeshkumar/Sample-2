.class public Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/AllowedPaymentMethods;
.super Ljava/lang/Object;
.source "AllowedPaymentMethods.java"


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
            "Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/AllowedPaymentMethods;->data:Ljava/util/List;

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
            "Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/AllowedPaymentMethods;->data:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/AllowedPaymentMethods;->data:Ljava/util/List;

    .line 30
    return-void
.end method
