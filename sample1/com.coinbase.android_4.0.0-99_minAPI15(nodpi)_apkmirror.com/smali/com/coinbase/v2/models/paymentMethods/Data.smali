.class public Lcom/coinbase/v2/models/paymentMethods/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v2/models/paymentMethods/Data$CDVStatus;,
        Lcom/coinbase/v2/models/paymentMethods/Data$VerificationMethod;,
        Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    }
.end annotation


# instance fields
.field private allowBuy:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_buy"
    .end annotation
.end field

.field private allowDeposit:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_sell"
    .end annotation
.end field

.field private allowSell:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_withdraw"
    .end annotation
.end field

.field private allowWithdraw:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allow_deposit"
    .end annotation
.end field

.field private cdvStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cdv_status"
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

.field private fiatAccount:Lcom/coinbase/v2/models/paymentMethods/FiatAccount;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fiat_account"
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

.field private recurringOptions:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recurring_options"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
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

.field private updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field

.field private verificationMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verification_method"
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
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->recurringOptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAllowBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowDeposit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowDeposit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowSell()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowSell:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowWithdraw()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowWithdraw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCdvStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->cdvStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->fiatAccount:Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->primaryBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrimarySell()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->primarySell:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRecurringOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->recurringOptions:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->verificationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowBuy:Ljava/lang/Boolean;

    .line 284
    return-void
.end method

.method public setAllowDeposit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowDeposit"    # Ljava/lang/Boolean;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowDeposit:Ljava/lang/Boolean;

    .line 320
    return-void
.end method

.method public setAllowSell(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowSell"    # Ljava/lang/Boolean;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowSell:Ljava/lang/Boolean;

    .line 302
    return-void
.end method

.method public setAllowWithdraw(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowWithdraw"    # Ljava/lang/Boolean;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->allowWithdraw:Ljava/lang/Boolean;

    .line 338
    return-void
.end method

.method public setCdvStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdvStatus"    # Ljava/lang/String;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->cdvStatus:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "createdAt"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->createdAt:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->currency:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setFiatAccount(Lcom/coinbase/v2/models/paymentMethods/FiatAccount;)V
    .locals 0
    .param p1, "fiatAccount"    # Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->fiatAccount:Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    .line 392
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->id:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->name:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setPrimaryBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primaryBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->primaryBuy:Ljava/lang/Boolean;

    .line 248
    return-void
.end method

.method public setPrimarySell(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primarySell"    # Ljava/lang/Boolean;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->primarySell:Ljava/lang/Boolean;

    .line 266
    return-void
.end method

.method public setRecurringOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "recurringOptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->recurringOptions:Ljava/util/List;

    .line 428
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->type:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedAt"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->updatedAt:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setVerificationMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "verificationMethod"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->verificationMethod:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "verified"    # Ljava/lang/Boolean;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/coinbase/v2/models/paymentMethods/Data;->verified:Ljava/lang/Boolean;

    .line 410
    return-void
.end method
