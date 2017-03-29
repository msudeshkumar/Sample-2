.class public Lcom/coinbase/v2/models/transactions/Trade;
.super Ljava/lang/Object;
.source "Trade.java"


# instance fields
.field private amount:Lcom/coinbase/v2/models/transactions/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private committed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "committed"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private fees:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fees"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Fee;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private instant:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instant"
    .end annotation
.end field

.field private paymentMethod:Lcom/coinbase/v2/models/transactions/PaymentMethod;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_method"
    .end annotation
.end field

.field private payoutAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payout_at"
    .end annotation
.end field

.field private resource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource"
    .end annotation
.end field

.field private resourcePath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resource_path"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private subtotal:Lcom/coinbase/v2/models/transactions/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtotal"
    .end annotation
.end field

.field private total:Lcom/coinbase/v2/models/transactions/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field private transaction:Lcom/coinbase/v2/models/transactions/Transaction;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->fees:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAmount()Lcom/coinbase/v2/models/transactions/Amount;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->amount:Lcom/coinbase/v2/models/transactions/Amount;

    return-object v0
.end method

.method public getCommitted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->committed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Fee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->fees:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstant()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->instant:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPaymentMethod()Lcom/coinbase/v2/models/transactions/PaymentMethod;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->paymentMethod:Lcom/coinbase/v2/models/transactions/PaymentMethod;

    return-object v0
.end method

.method public getPayoutAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->payoutAt:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Lcom/coinbase/v2/models/transactions/Amount;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->subtotal:Lcom/coinbase/v2/models/transactions/Amount;

    return-object v0
.end method

.method public getTotal()Lcom/coinbase/v2/models/transactions/Amount;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->total:Lcom/coinbase/v2/models/transactions/Amount;

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v2/models/transactions/Transaction;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->transaction:Lcom/coinbase/v2/models/transactions/Transaction;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Trade;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Lcom/coinbase/v2/models/transactions/Amount;)V
    .locals 0
    .param p1, "amount"    # Lcom/coinbase/v2/models/transactions/Amount;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->amount:Lcom/coinbase/v2/models/transactions/Amount;

    .line 235
    return-void
.end method

.method public setCommitted(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "committed"    # Ljava/lang/Boolean;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->committed:Ljava/lang/Boolean;

    .line 289
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->createdAt:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setFees(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transactions/Fee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "fees":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transactions/Fee;>;"
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->fees:Ljava/util/List;

    .line 145
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->id:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setInstant(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "instant"    # Ljava/lang/Boolean;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->instant:Ljava/lang/Boolean;

    .line 325
    return-void
.end method

.method public setPaymentMethod(Lcom/coinbase/v2/models/transactions/PaymentMethod;)V
    .locals 0
    .param p1, "paymentMethod"    # Lcom/coinbase/v2/models/transactions/PaymentMethod;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->paymentMethod:Lcom/coinbase/v2/models/transactions/PaymentMethod;

    .line 109
    return-void
.end method

.method public setPayoutAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "payoutAt"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->payoutAt:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->resource:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->resourcePath:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->status:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSubtotal(Lcom/coinbase/v2/models/transactions/Amount;)V
    .locals 0
    .param p1, "subtotal"    # Lcom/coinbase/v2/models/transactions/Amount;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->subtotal:Lcom/coinbase/v2/models/transactions/Amount;

    .line 271
    return-void
.end method

.method public setTotal(Lcom/coinbase/v2/models/transactions/Amount;)V
    .locals 0
    .param p1, "total"    # Lcom/coinbase/v2/models/transactions/Amount;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->total:Lcom/coinbase/v2/models/transactions/Amount;

    .line 253
    return-void
.end method

.method public setTransaction(Lcom/coinbase/v2/models/transactions/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v2/models/transactions/Transaction;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->transaction:Lcom/coinbase/v2/models/transactions/Transaction;

    .line 127
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Trade;->updatedAt:Ljava/lang/String;

    .line 181
    return-void
.end method
