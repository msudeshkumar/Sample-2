.class public Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private allowBuy:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_buy"
    .end annotation
.end field

.field private allowSell:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_sell"
    .end annotation
.end field

.field private createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private primaryBuy:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary_buy"
    .end annotation
.end field

.field private primarySell:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary_sell"
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

.field private verified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verified"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllowBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->allowBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowSell()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->allowSell:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->primaryBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrimarySell()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->primarySell:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->allowBuy:Ljava/lang/Boolean;

    .line 168
    return-void
.end method

.method public setAllowSell(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowSell"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->allowSell:Ljava/lang/Boolean;

    .line 186
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->createdAt:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->currency:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPrimaryBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primaryBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->primaryBuy:Ljava/lang/Boolean;

    .line 132
    return-void
.end method

.method public setPrimarySell(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primarySell"    # Ljava/lang/Boolean;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->primarySell:Ljava/lang/Boolean;

    .line 150
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->type:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->updatedAt:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "verified"    # Ljava/lang/Boolean;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/coinbase/api/internal/models/paymentMethods/verify/Data;->verified:Ljava/lang/Boolean;

    .line 240
    return-void
.end method
