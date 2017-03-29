.class public Lcom/coinbase/api/internal/entity/SepaDepositInfo;
.super Ljava/lang/Object;
.source "SepaDepositInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7d7c907725b2702fL


# instance fields
.field _accountAddress:Ljava/lang/String;

.field _accountName:Ljava/lang/String;

.field _bankCountryName:Ljava/lang/String;

.field _bankName:Ljava/lang/String;

.field _iban:Ljava/lang/String;

.field _referenceId:Ljava/lang/String;

.field _swift:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_accountAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_bankCountryName:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_iban:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_referenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSwift()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_swift:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountAddress"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_accountAddress:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_accountName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setBankCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCountryName"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_bankCountryName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_bankName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setIban(Ljava/lang/String;)V
    .locals 0
    .param p1, "iban"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_iban:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_referenceId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setSwift(Ljava/lang/String;)V
    .locals 0
    .param p1, "swift"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/SepaDepositInfo;->_swift:Ljava/lang/String;

    .line 31
    return-void
.end method
