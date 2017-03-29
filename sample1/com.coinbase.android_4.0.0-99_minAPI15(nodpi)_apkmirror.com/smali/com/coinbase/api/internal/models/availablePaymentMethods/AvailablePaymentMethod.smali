.class public Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;
.super Ljava/lang/Object;
.source "AvailablePaymentMethod.java"


# instance fields
.field private buyTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "buy_time"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private feeDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fee_description"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private relativeLimits:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relative_limits"
    .end annotation
.end field

.field private requirements:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requirements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private verifyRequirements:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verify_requirements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->requirements:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->verifyRequirements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBuyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->buyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->feeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeLimits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->relativeLimits:Ljava/lang/String;

    return-object v0
.end method

.method public getRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->requirements:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->verifyRequirements:Ljava/util/List;

    return-object v0
.end method

.method public setBuyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "buyTime"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->buyTime:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->description:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setFeeDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "feeDescription"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->feeDescription:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->name:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setRelativeLimits(Ljava/lang/String;)V
    .locals 0
    .param p1, "relativeLimits"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->relativeLimits:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setRequirements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "requirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->requirements:Ljava/util/List;

    .line 74
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->type:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setVerifyRequirements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "verifyRequirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->verifyRequirements:Ljava/util/List;

    .line 92
    return-void
.end method
