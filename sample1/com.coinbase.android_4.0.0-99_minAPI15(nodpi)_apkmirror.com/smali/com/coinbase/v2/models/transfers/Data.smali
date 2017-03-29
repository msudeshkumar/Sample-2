.class public Lcom/coinbase/v2/models/transfers/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private amount:Lcom/coinbase/v2/models/transfers/Amount;
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
            "Lcom/coinbase/v2/models/transfers/Fee;",
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

.field private paymentMethod:Lcom/coinbase/v2/models/transfers/PaymentMethod;
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

.field private subtotal:Lcom/coinbase/v2/models/transfers/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subtotal"
    .end annotation
.end field

.field private total:Lcom/coinbase/v2/models/transfers/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field

.field private transaction:Lcom/coinbase/v2/models/transfers/Transaction;
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
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->fees:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAmount()Lcom/coinbase/v2/models/transfers/Amount;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->amount:Lcom/coinbase/v2/models/transfers/Amount;

    return-object v0
.end method

.method public getCommitted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->committed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getFees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transfers/Fee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->fees:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstant()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->instant:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPaymentMethod()Lcom/coinbase/v2/models/transfers/PaymentMethod;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->paymentMethod:Lcom/coinbase/v2/models/transfers/PaymentMethod;

    return-object v0
.end method

.method public getPayoutAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->payoutAt:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotal()Lcom/coinbase/v2/models/transfers/Amount;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->subtotal:Lcom/coinbase/v2/models/transfers/Amount;

    return-object v0
.end method

.method public getTotal()Lcom/coinbase/v2/models/transfers/Amount;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->total:Lcom/coinbase/v2/models/transfers/Amount;

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v2/models/transfers/Transaction;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->transaction:Lcom/coinbase/v2/models/transfers/Transaction;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/coinbase/v2/models/transfers/Data;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Lcom/coinbase/v2/models/transfers/Amount;)V
    .locals 0
    .param p1, "amount"    # Lcom/coinbase/v2/models/transfers/Amount;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->amount:Lcom/coinbase/v2/models/transfers/Amount;

    .line 149
    return-void
.end method

.method public setCommitted(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "committed"    # Ljava/lang/Boolean;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->committed:Ljava/lang/Boolean;

    .line 275
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->createdAt:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setFees(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/transfers/Fee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "fees":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/transfers/Fee;>;"
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->fees:Ljava/util/List;

    .line 311
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->id:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setInstant(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "instant"    # Ljava/lang/Boolean;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->instant:Ljava/lang/Boolean;

    .line 293
    return-void
.end method

.method public setPaymentMethod(Lcom/coinbase/v2/models/transfers/PaymentMethod;)V
    .locals 0
    .param p1, "paymentMethod"    # Lcom/coinbase/v2/models/transfers/PaymentMethod;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->paymentMethod:Lcom/coinbase/v2/models/transfers/PaymentMethod;

    .line 113
    return-void
.end method

.method public setPayoutAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "payoutAt"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->payoutAt:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->resource:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->resourcePath:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->status:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSubtotal(Lcom/coinbase/v2/models/transfers/Amount;)V
    .locals 0
    .param p1, "subtotal"    # Lcom/coinbase/v2/models/transfers/Amount;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->subtotal:Lcom/coinbase/v2/models/transfers/Amount;

    .line 185
    return-void
.end method

.method public setTotal(Lcom/coinbase/v2/models/transfers/Amount;)V
    .locals 0
    .param p1, "total"    # Lcom/coinbase/v2/models/transfers/Amount;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->total:Lcom/coinbase/v2/models/transfers/Amount;

    .line 167
    return-void
.end method

.method public setTransaction(Lcom/coinbase/v2/models/transfers/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v2/models/transfers/Transaction;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->transaction:Lcom/coinbase/v2/models/transfers/Transaction;

    .line 131
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/coinbase/v2/models/transfers/Data;->updatedAt:Ljava/lang/String;

    .line 221
    return-void
.end method
