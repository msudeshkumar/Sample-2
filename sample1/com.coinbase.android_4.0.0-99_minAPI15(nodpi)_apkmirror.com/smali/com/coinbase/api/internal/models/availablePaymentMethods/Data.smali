.class public Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private availablePaymentMethods:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "available_payment_methods"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;",
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

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;->availablePaymentMethods:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAvailablePaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;->availablePaymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public setAvailablePaymentMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "availablePaymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/Data;->availablePaymentMethods:Ljava/util/List;

    .line 35
    return-void
.end method
