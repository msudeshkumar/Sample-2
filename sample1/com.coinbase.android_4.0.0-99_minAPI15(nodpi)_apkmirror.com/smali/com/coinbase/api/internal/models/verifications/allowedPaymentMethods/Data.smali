.class public Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private pickerBuyTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picker_buy_time"
    .end annotation
.end field

.field private pickerFeeDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picker_fee_description"
    .end annotation
.end field

.field private pickerRelativeLimits:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "picker_relative_limits"
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->requirements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerBuyTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->pickerBuyTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerFeeDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->pickerFeeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPickerRelativeLimits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->pickerRelativeLimits:Ljava/lang/String;

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
    .line 76
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->requirements:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->description:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPickerBuyTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "pickerBuyTime"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->pickerBuyTime:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setPickerFeeDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "pickerFeeDescription"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->pickerFeeDescription:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setPickerRelativeLimits(Ljava/lang/String;)V
    .locals 0
    .param p1, "pickerRelativeLimits"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->pickerRelativeLimits:Ljava/lang/String;

    .line 140
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
    .line 85
    .local p1, "requirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->requirements:Ljava/util/List;

    .line 86
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/api/internal/models/verifications/allowedPaymentMethods/Data;->type:Ljava/lang/String;

    .line 50
    return-void
.end method
