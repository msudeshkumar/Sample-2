.class public Lcom/coinbase/v2/models/transactions/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private amount:Lcom/coinbase/v2/models/transactions/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private buy:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buy"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private delayed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delayed"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private details:Lcom/coinbase/v2/models/transactions/Details;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "details"
    .end annotation
.end field

.field private exchangeDeposit:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exchange_deposit"
    .end annotation
.end field

.field private exchangeWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exchange_withdrawal"
    .end annotation
.end field

.field private fiatDeposit:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fiat_deposit"
    .end annotation
.end field

.field private fiatWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fiat_withdrawal"
    .end annotation
.end field

.field private from:Lcom/coinbase/v2/models/transactions/Entity;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private idem:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idem"
    .end annotation
.end field

.field private instantExchange:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "instant_exchange"
    .end annotation
.end field

.field private nativeAmount:Lcom/coinbase/v2/models/transactions/NativeAmount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "native_amount"
    .end annotation
.end field

.field private network:Lcom/coinbase/v2/models/transactions/Network;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "network"
    .end annotation
.end field

.field private request:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request"
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

.field private sell:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sell"
    .end annotation
.end field

.field private send:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "send"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private to:Lcom/coinbase/v2/models/transactions/Entity;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
    .end annotation
.end field

.field private transfer:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transfer"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field

.field private vaultWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vault_withdrawal"
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
.method public getAmount()Lcom/coinbase/v2/models/transactions/Amount;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->amount:Lcom/coinbase/v2/models/transactions/Amount;

    return-object v0
.end method

.method public getBuy()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->buy:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->delayed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDetails()Lcom/coinbase/v2/models/transactions/Details;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->details:Lcom/coinbase/v2/models/transactions/Details;

    return-object v0
.end method

.method public getExchangeDeposit()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->exchangeDeposit:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getExchangeWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->exchangeWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getFiatDeposit()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->fiatDeposit:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getFiatWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->fiatWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getFrom()Lcom/coinbase/v2/models/transactions/Entity;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->from:Lcom/coinbase/v2/models/transactions/Entity;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->idem:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantExchange()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->instantExchange:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getNativeAmount()Lcom/coinbase/v2/models/transactions/NativeAmount;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->nativeAmount:Lcom/coinbase/v2/models/transactions/NativeAmount;

    return-object v0
.end method

.method public getNetwork()Lcom/coinbase/v2/models/transactions/Network;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->network:Lcom/coinbase/v2/models/transactions/Network;

    return-object v0
.end method

.method public getRequest()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->request:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSell()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->sell:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getSend()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->send:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lcom/coinbase/v2/models/transactions/Entity;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->to:Lcom/coinbase/v2/models/transactions/Entity;

    return-object v0
.end method

.method public getTransfer()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->transfer:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVaultWithdrawal()Lcom/coinbase/v2/models/transactions/Trade;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Data;->vaultWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;

    return-object v0
.end method

.method public setAmount(Lcom/coinbase/v2/models/transactions/Amount;)V
    .locals 0
    .param p1, "amount"    # Lcom/coinbase/v2/models/transactions/Amount;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->amount:Lcom/coinbase/v2/models/transactions/Amount;

    .line 163
    return-void
.end method

.method public setBuy(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "buy"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->buy:Lcom/coinbase/v2/models/transactions/Trade;

    .line 361
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->createdAt:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setDelayed(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "delayed"    # Ljava/lang/Boolean;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->delayed:Ljava/lang/Boolean;

    .line 541
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->description:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setDetails(Lcom/coinbase/v2/models/transactions/Details;)V
    .locals 0
    .param p1, "details"    # Lcom/coinbase/v2/models/transactions/Details;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->details:Lcom/coinbase/v2/models/transactions/Details;

    .line 577
    return-void
.end method

.method public setExchangeDeposit(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "exchangeDeposit"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->exchangeDeposit:Lcom/coinbase/v2/models/transactions/Trade;

    .line 487
    return-void
.end method

.method public setExchangeWithdrawal(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "exchangeWithdrawal"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->exchangeWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;

    .line 505
    return-void
.end method

.method public setFiatDeposit(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "fiatDeposit"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 468
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->fiatDeposit:Lcom/coinbase/v2/models/transactions/Trade;

    .line 469
    return-void
.end method

.method public setFiatWithdrawal(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "fiatWithdrawal"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->fiatWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;

    .line 451
    return-void
.end method

.method public setFrom(Lcom/coinbase/v2/models/transactions/Entity;)V
    .locals 0
    .param p1, "from"    # Lcom/coinbase/v2/models/transactions/Entity;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->from:Lcom/coinbase/v2/models/transactions/Entity;

    .line 343
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->id:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setIdem(Ljava/lang/String;)V
    .locals 0
    .param p1, "idem"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->idem:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setInstantExchange(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "instantExchange"    # Ljava/lang/Boolean;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->instantExchange:Ljava/lang/Boolean;

    .line 559
    return-void
.end method

.method public setNativeAmount(Lcom/coinbase/v2/models/transactions/NativeAmount;)V
    .locals 0
    .param p1, "nativeAmount"    # Lcom/coinbase/v2/models/transactions/NativeAmount;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->nativeAmount:Lcom/coinbase/v2/models/transactions/NativeAmount;

    .line 181
    return-void
.end method

.method public setNetwork(Lcom/coinbase/v2/models/transactions/Network;)V
    .locals 0
    .param p1, "network"    # Lcom/coinbase/v2/models/transactions/Network;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->network:Lcom/coinbase/v2/models/transactions/Network;

    .line 289
    return-void
.end method

.method public setRequest(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "request"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->request:Lcom/coinbase/v2/models/transactions/Trade;

    .line 397
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->resource:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->resourcePath:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setSell(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "sell"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->sell:Lcom/coinbase/v2/models/transactions/Trade;

    .line 379
    return-void
.end method

.method public setSend(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "send"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->send:Lcom/coinbase/v2/models/transactions/Trade;

    .line 433
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->status:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setTo(Lcom/coinbase/v2/models/transactions/Entity;)V
    .locals 0
    .param p1, "to"    # Lcom/coinbase/v2/models/transactions/Entity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->to:Lcom/coinbase/v2/models/transactions/Entity;

    .line 325
    return-void
.end method

.method public setTransfer(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "transfer"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->transfer:Lcom/coinbase/v2/models/transactions/Trade;

    .line 415
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->type:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->updatedAt:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setVaultWithdrawal(Lcom/coinbase/v2/models/transactions/Trade;)V
    .locals 0
    .param p1, "vaultWithdrawal"    # Lcom/coinbase/v2/models/transactions/Trade;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Data;->vaultWithdrawal:Lcom/coinbase/v2/models/transactions/Trade;

    .line 523
    return-void
.end method
