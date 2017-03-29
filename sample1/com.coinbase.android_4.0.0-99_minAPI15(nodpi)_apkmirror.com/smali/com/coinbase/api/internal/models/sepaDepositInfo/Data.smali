.class public Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private accountAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_address"
    .end annotation
.end field

.field private accountName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "account_name"
    .end annotation
.end field

.field private bankAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_address"
    .end annotation
.end field

.field private bankCountryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_country_name"
    .end annotation
.end field

.field private bankName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bank_name"
    .end annotation
.end field

.field private iban:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iban"
    .end annotation
.end field

.field private reference:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reference"
    .end annotation
.end field

.field private swift:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "swift"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->accountAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->bankAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->bankCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->iban:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getSwift()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->swift:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountAddress"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->accountAddress:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->accountName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setBankAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankAddress"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->bankAddress:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setBankCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCountryName"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->bankCountryName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->bankName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setIban(Ljava/lang/String;)V
    .locals 0
    .param p1, "iban"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->iban:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->reference:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSwift(Ljava/lang/String;)V
    .locals 0
    .param p1, "swift"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/coinbase/api/internal/models/sepaDepositInfo/Data;->swift:Ljava/lang/String;

    .line 71
    return-void
.end method
