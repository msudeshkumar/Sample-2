.class public Lcom/coinbase/v1/entity/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Transaction$DetailedStatus;,
        Lcom/coinbase/v1/entity/Transaction$Status;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x271b0a4c31213e30L


# instance fields
.field private _amount:Lorg/joda/money/Money;

.field private _amountCurrencyIso:Ljava/lang/String;

.field private _amountString:Ljava/lang/String;

.field private _confirmations:Ljava/lang/Integer;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _detailedStatus:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

.field private _from:Ljava/lang/String;

.field private _hsh:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _idem:Ljava/lang/String;

.field private _instantBuy:Ljava/lang/Boolean;

.field private _instantExchangeQuote:Ljava/lang/String;

.field private _notes:Ljava/lang/String;

.field private _orderId:Ljava/lang/String;

.field private _recipient:Lcom/coinbase/v1/entity/User;

.field private _recipientAccount:Lcom/coinbase/v1/entity/Account;

.field private _recipientAddress:Ljava/lang/String;

.field private _request:Ljava/lang/Boolean;

.field private _sender:Lcom/coinbase/v1/entity/User;

.field private _senderAccount:Lcom/coinbase/v1/entity/Account;

.field private _status:Lcom/coinbase/v1/entity/Transaction$Status;

.field private _to:Ljava/lang/String;

.field private _transferBitcoinAmountString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amount"
    .end annotation
.end field

.field private _userFee:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Lorg/joda/money/Money;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_amount:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getAmountCurrencyIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_amountCurrencyIso:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_amountString:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmations()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_confirmations:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getDetailedStatus()Lcom/coinbase/v1/entity/Transaction$DetailedStatus;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_detailedStatus:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_from:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_hsh:Ljava/lang/String;

    return-object v0
.end method

.method public getHsh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_hsh:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_idem:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantBuy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_instantBuy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstantExchangeQuote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_instantExchangeQuote:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_notes:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_recipient:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public getRecipientAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_recipientAccount:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_sender:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public getSenderAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_senderAccount:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getStatus()Lcom/coinbase/v1/entity/Transaction$Status;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_status:Lcom/coinbase/v1/entity/Transaction$Status;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_to:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferBitcoinAmountString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_transferBitcoinAmountString:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_userFee:Ljava/lang/String;

    return-object v0
.end method

.method public isRequest()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_request:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAmount(Lorg/joda/money/Money;)V
    .locals 1
    .param p1, "amount"    # Lorg/joda/money/Money;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/coinbase/v1/deserializer/MoneyDeserializer;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 210
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_amount:Lorg/joda/money/Money;

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Transaction;->setAmountString(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Transaction;->setAmountCurrencyIso(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Transaction;->setAmountString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Transaction;->setAmountCurrencyIso(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAmountCurrencyIso(Ljava/lang/String;)V
    .locals 0
    .param p1, "amountCurrencyIso"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_amountCurrencyIso:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setAmountString(Ljava/lang/String;)V
    .locals 0
    .param p1, "amountString"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_amountString:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setConfirmations(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "confirmations"    # Ljava/lang/Integer;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_confirmations:Ljava/lang/Integer;

    .line 112
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_createdAt:Lorg/joda/time/DateTime;

    .line 168
    return-void
.end method

.method public setDetailedStatus(Lcom/coinbase/v1/entity/Transaction$DetailedStatus;)V
    .locals 0
    .param p1, "detailedStatus"    # Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_detailedStatus:Lcom/coinbase/v1/entity/Transaction$DetailedStatus;

    .line 314
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_from:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_hsh:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setHsh(Ljava/lang/String;)V
    .locals 0
    .param p1, "hsh"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_hsh:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_id:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setIdem(Ljava/lang/String;)V
    .locals 0
    .param p1, "idem"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_idem:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setInstantBuy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "instantBuy"    # Ljava/lang/Boolean;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_instantBuy:Ljava/lang/Boolean;

    .line 282
    return-void
.end method

.method public setInstantExchangeQuote(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_instantExchangeQuote:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_notes:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_orderId:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setRecipient(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "recipient"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_recipient:Lcom/coinbase/v1/entity/User;

    .line 250
    return-void
.end method

.method public setRecipientAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "recipientAccount"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_recipientAccount:Lcom/coinbase/v1/entity/Account;

    .line 306
    return-void
.end method

.method public setRecipientAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipientAddress"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_recipientAddress:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setRequest(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "request"    # Ljava/lang/Boolean;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_request:Ljava/lang/Boolean;

    .line 226
    return-void
.end method

.method public setSender(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "sender"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_sender:Lcom/coinbase/v1/entity/User;

    .line 242
    return-void
.end method

.method public setSenderAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "senderAccount"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_senderAccount:Lcom/coinbase/v1/entity/Account;

    .line 298
    return-void
.end method

.method public setStatus(Lcom/coinbase/v1/entity/Transaction$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/coinbase/v1/entity/Transaction$Status;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_status:Lcom/coinbase/v1/entity/Transaction$Status;

    .line 234
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_to:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setTransferBitcoinAmountString(Ljava/lang/String;)V
    .locals 0
    .param p1, "transferBitcoinAmountString"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transaction;->_transferBitcoinAmountString:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setUserFee(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "userFee"    # Ljava/math/BigDecimal;

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Transaction;->_userFee:Ljava/lang/String;

    .line 258
    return-void
.end method
