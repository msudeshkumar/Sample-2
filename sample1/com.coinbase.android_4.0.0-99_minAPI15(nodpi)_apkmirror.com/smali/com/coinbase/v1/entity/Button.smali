.class public Lcom/coinbase/v1/entity/Button;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Button$Style;,
        Lcom/coinbase/v1/entity/Button$Repeat;,
        Lcom/coinbase/v1/entity/Button$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4bec8e8af4d8e7b5L


# instance fields
.field private _autoRedirect:Ljava/lang/Boolean;

.field private _callbackUrl:Ljava/lang/String;

.field private _cancelUrl:Ljava/lang/String;

.field private _choosePrice:Ljava/lang/Boolean;

.field private _code:Ljava/lang/String;

.field private _custom:Ljava/lang/String;

.field private _customSecure:Ljava/lang/Boolean;

.field private _description:Ljava/lang/String;

.field private _includeAddress:Ljava/lang/Boolean;

.field private _includeEmail:Ljava/lang/Boolean;

.field private _infoUrl:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _price:Lorg/joda/money/Money;

.field private _priceCurrencyIso:Ljava/lang/String;

.field private _priceString:Ljava/lang/String;

.field private _repeat:Lcom/coinbase/v1/entity/Button$Repeat;

.field private _style:Lcom/coinbase/v1/entity/Button$Style;

.field private _successUrl:Ljava/lang/String;

.field private _text:Ljava/lang/String;

.field private _type:Lcom/coinbase/v1/entity/Button$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoRedirect()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_autoRedirect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_cancelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChoosePrice()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_choosePrice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_custom:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomSecure()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_customSecure:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeAddress()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_includeAddress:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIncludeEmail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_includeEmail:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInfoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_infoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_price:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getPriceCurrencyIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_priceCurrencyIso:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_priceString:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeat()Lcom/coinbase/v1/entity/Button$Repeat;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_repeat:Lcom/coinbase/v1/entity/Button$Repeat;

    return-object v0
.end method

.method public getStyle()Lcom/coinbase/v1/entity/Button$Style;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_style:Lcom/coinbase/v1/entity/Button$Style;

    return-object v0
.end method

.method public getSuccessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_successUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/coinbase/v1/entity/Button$Type;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button;->_type:Lcom/coinbase/v1/entity/Button$Type;

    return-object v0
.end method

.method public setAutoRedirect(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "autoRedirect"    # Ljava/lang/Boolean;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_autoRedirect:Ljava/lang/Boolean;

    .line 215
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "customUrl"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_callbackUrl:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setCancelUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cancelUrl"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_cancelUrl:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setChoosePrice(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "choosePrice"    # Ljava/lang/Boolean;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_choosePrice:Ljava/lang/Boolean;

    .line 221
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_code:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "custom"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_custom:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setCustomSecure(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "customSecure"    # Ljava/lang/Boolean;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_customSecure:Ljava/lang/Boolean;

    .line 185
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_description:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_code:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setIncludeAddress(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "includeAddress"    # Ljava/lang/Boolean;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_includeAddress:Ljava/lang/Boolean;

    .line 227
    return-void
.end method

.method public setIncludeEmail(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "includeEmail"    # Ljava/lang/Boolean;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_includeEmail:Ljava/lang/Boolean;

    .line 233
    return-void
.end method

.method public setInfoUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "infoUrl"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_infoUrl:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setPrice(Lorg/joda/money/Money;)V
    .locals 1
    .param p1, "price"    # Lorg/joda/money/Money;

    .prologue
    const/4 v0, 0x0

    .line 238
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_price:Lorg/joda/money/Money;

    .line 239
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Lorg/joda/money/Money;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Button;->setPriceString(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lorg/joda/money/Money;->getCurrencyUnit()Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Button;->setPriceCurrencyIso(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Button;->setPriceString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/coinbase/v1/entity/Button;->setPriceCurrencyIso(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPriceCurrencyIso(Ljava/lang/String;)V
    .locals 0
    .param p1, "priceCurrencyIso"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_priceCurrencyIso:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPriceString(Ljava/lang/String;)V
    .locals 0
    .param p1, "priceString"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_priceString:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setRepeat(Lcom/coinbase/v1/entity/Button$Repeat;)V
    .locals 0
    .param p1, "repeat"    # Lcom/coinbase/v1/entity/Button$Repeat;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_repeat:Lcom/coinbase/v1/entity/Button$Repeat;

    .line 119
    return-void
.end method

.method public setStyle(Lcom/coinbase/v1/entity/Button$Style;)V
    .locals 0
    .param p1, "style"    # Lcom/coinbase/v1/entity/Button$Style;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_style:Lcom/coinbase/v1/entity/Button$Style;

    .line 161
    return-void
.end method

.method public setSuccessUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "successUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_successUrl:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_text:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setType(Lcom/coinbase/v1/entity/Button$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/v1/entity/Button$Type;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/coinbase/v1/entity/Button;->_type:Lcom/coinbase/v1/entity/Button$Type;

    .line 155
    return-void
.end method
