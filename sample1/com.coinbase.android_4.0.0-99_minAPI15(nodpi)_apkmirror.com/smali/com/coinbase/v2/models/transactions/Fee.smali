.class public Lcom/coinbase/v2/models/transactions/Fee;
.super Ljava/lang/Object;
.source "Fee.java"


# instance fields
.field private amount:Lcom/coinbase/v2/models/transactions/Amount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
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
    .line 42
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Fee;->amount:Lcom/coinbase/v2/models/transactions/Amount;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/coinbase/v2/models/transactions/Fee;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Lcom/coinbase/v2/models/transactions/Amount;)V
    .locals 0
    .param p1, "amount"    # Lcom/coinbase/v2/models/transactions/Amount;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Fee;->amount:Lcom/coinbase/v2/models/transactions/Amount;

    .line 52
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/v2/models/transactions/Fee;->type:Ljava/lang/String;

    .line 34
    return-void
.end method
