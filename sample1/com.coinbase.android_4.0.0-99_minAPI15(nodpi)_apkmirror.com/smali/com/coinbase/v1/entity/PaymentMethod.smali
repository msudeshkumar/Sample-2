.class public Lcom/coinbase/v1/entity/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethod.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;,
        Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;,
        Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;,
        Lcom/coinbase/v1/entity/PaymentMethod$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x319c4e520ce2b937L


# instance fields
.field private _account:Lcom/coinbase/v1/entity/Account;

.field private _allowBuy:Ljava/lang/Boolean;

.field private _allowDeposit:Ljava/lang/Boolean;

.field private _allowSell:Ljava/lang/Boolean;

.field private _allowWithdraw:Ljava/lang/Boolean;

.field private _bankName:Ljava/lang/String;

.field private _cdvStatus:Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;

.field private _currency:Ljava/lang/String;

.field private _fiatAccount:Lcom/coinbase/v1/entity/Account;

.field private _iavFields:[Lcom/coinbase/v1/entity/IAVField;

.field private _iavStatus:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

.field private _iban:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _primaryBuy:Ljava/lang/Boolean;

.field private _primarySell:Ljava/lang/Boolean;

.field private _swift:Ljava/lang/String;

.field private _type:Lcom/coinbase/v1/entity/PaymentMethod$Type;

.field private _uuid:Ljava/lang/String;

.field private _verificationMethod:Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

.field private _verified:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public allowDeposit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowDeposit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public allowSell()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowSell:Ljava/lang/Boolean;

    return-object v0
.end method

.method public allowWithdraw()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowWithdraw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_account:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getCdvStatus()Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_cdvStatus:Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public getFiatAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_fiatAccount:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getIavFields()[Lcom/coinbase/v1/entity/IAVField;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_iavFields:[Lcom/coinbase/v1/entity/IAVField;

    return-object v0
.end method

.method public getIavStatus()Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_iavStatus:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_iban:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_primaryBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPrimarySell()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_primarySell:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSwift()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_swift:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/coinbase/v1/entity/PaymentMethod$Type;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_type:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationMethod()Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_verificationMethod:Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

    return-object v0
.end method

.method public getVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_account:Lcom/coinbase/v1/entity/Account;

    .line 222
    return-void
.end method

.method public setAllowBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowBuy:Ljava/lang/Boolean;

    .line 190
    return-void
.end method

.method public setAllowDeposit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowDeposit"    # Ljava/lang/Boolean;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowDeposit:Ljava/lang/Boolean;

    .line 206
    return-void
.end method

.method public setAllowSell(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowSell"    # Ljava/lang/Boolean;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowSell:Ljava/lang/Boolean;

    .line 198
    return-void
.end method

.method public setAllowWithdraw(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "allowWithdraw"    # Ljava/lang/Boolean;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_allowWithdraw:Ljava/lang/Boolean;

    .line 214
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_bankName:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setCdvStatus(Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;)V
    .locals 0
    .param p1, "cdvStatus"    # Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_cdvStatus:Lcom/coinbase/v1/entity/PaymentMethod$CDVStatus;

    .line 318
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_currency:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setFiatAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_fiatAccount:Lcom/coinbase/v1/entity/Account;

    .line 230
    return-void
.end method

.method public setIavFields([Lcom/coinbase/v1/entity/IAVField;)V
    .locals 0
    .param p1, "iavFields"    # [Lcom/coinbase/v1/entity/IAVField;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_iavFields:[Lcom/coinbase/v1/entity/IAVField;

    .line 326
    return-void
.end method

.method public setIavStatus(Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;)V
    .locals 0
    .param p1, "iavStatus"    # Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_iavStatus:Lcom/coinbase/v1/entity/PaymentMethod$IAVStatus;

    .line 310
    return-void
.end method

.method public setIban(Ljava/lang/String;)V
    .locals 0
    .param p1, "iban"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_iban:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_id:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_name:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setPrimaryBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primaryBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_primaryBuy:Ljava/lang/Boolean;

    .line 286
    return-void
.end method

.method public setPrimarySell(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primarySell"    # Ljava/lang/Boolean;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_primarySell:Ljava/lang/Boolean;

    .line 294
    return-void
.end method

.method public setSwift(Ljava/lang/String;)V
    .locals 0
    .param p1, "swift"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_swift:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setType(Lcom/coinbase/v1/entity/PaymentMethod$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_type:Lcom/coinbase/v1/entity/PaymentMethod$Type;

    .line 246
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_uuid:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setVerificationMethod(Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;)V
    .locals 0
    .param p1, "verificationMethod"    # Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_verificationMethod:Lcom/coinbase/v1/entity/PaymentMethod$VerificationMethod;

    .line 302
    return-void
.end method

.method public setVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "verified"    # Ljava/lang/Boolean;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/coinbase/v1/entity/PaymentMethod;->_verified:Ljava/lang/Boolean;

    .line 254
    return-void
.end method
