.class public Lcom/coinbase/v1/entity/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/User$Flag;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6bdc86537703ea4fL


# instance fields
.field private _accept_agreement:Ljava/lang/Boolean;

.field private _allowedPaymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _avatarUrl:Ljava/lang/String;

.field private _balance:Lorg/joda/money/Money;

.field private _bitcoin_units:Ljava/lang/String;

.field private _buyLevel:Ljava/lang/Integer;

.field private _buyLimit:Lorg/joda/money/Money;

.field private _countryCode:Ljava/lang/String;

.field private _dob:Ljava/lang/String;

.field private _email:Ljava/lang/String;

.field private _email_verified:Ljava/lang/Boolean;

.field private _featureFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _firstName:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _lastName:Ljava/lang/String;

.field private _location:Ljava/lang/String;

.field private _merchant:Lcom/coinbase/v1/entity/Merchant;

.field private _name:Ljava/lang/String;

.field private _nativeCurrency:Lorg/joda/money/CurrencyUnit;

.field private _needsToReacceptUserAgreement:Ljava/lang/Boolean;

.field private _password:Ljava/lang/String;

.field private _profile_description:Ljava/lang/String;

.field private _receiveAddress:Ljava/lang/String;

.field private _referrerId:Ljava/lang/String;

.field private _regionalAgreementRequired:Ljava/lang/Boolean;

.field private _residentialAddress:Lcom/coinbase/v1/entity/ResidentialAddress;

.field private _sellLevel:Ljava/lang/Integer;

.field private _sellLimit:Lorg/joda/money/Money;

.field private _stateUnsupported:Ljava/lang/Boolean;

.field private _stateVerificationRequired:Ljava/lang/Boolean;

.field private _timeZone:Ljava/lang/String;

.field private _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptAgreement()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_accept_agreement:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowedPaymentMethods()Ljava/util/List;
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
    .line 289
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_allowedPaymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_balance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getBitcoinUnits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_bitcoin_units:Ljava/lang/String;

    return-object v0
.end method

.method public getBuyLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_buyLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBuyLimit()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_buyLimit:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_dob:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_email_verified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFeatureFlags()Ljava/util/List;
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
    .line 297
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_featureFlags:Ljava/util/List;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchant()Lcom/coinbase/v1/entity/Merchant;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_merchant:Lcom/coinbase/v1/entity/Merchant;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeCurrency()Lorg/joda/money/CurrencyUnit;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_nativeCurrency:Lorg/joda/money/CurrencyUnit;

    return-object v0
.end method

.method public getNeedsToReAcceptUserAgreement()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_needsToReacceptUserAgreement:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_profile_description:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_receiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_referrerId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionalAgreementRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_regionalAgreementRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getResidentialAddress()Lcom/coinbase/v1/entity/ResidentialAddress;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_residentialAddress:Lcom/coinbase/v1/entity/ResidentialAddress;

    return-object v0
.end method

.method public getSellLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_sellLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSellLimit()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_sellLimit:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getStateUnsupported()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_stateUnsupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStateVerificationRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_stateVerificationRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/coinbase/v1/entity/User;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public setAcceptAgreement(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "accept_agreement"    # Ljava/lang/Boolean;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_accept_agreement:Ljava/lang/Boolean;

    .line 246
    return-void
.end method

.method public setAllowedPaymentMethods(Ljava/util/List;)V
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
    .line 293
    .local p1, "allowedPaymentMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_allowedPaymentMethods:Ljava/util/List;

    .line 294
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_avatarUrl:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "balance"    # Lorg/joda/money/Money;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/coinbase/v1/deserializer/MoneyDeserializer;
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_balance:Lorg/joda/money/Money;

    .line 148
    return-void
.end method

.method public setBitcoinUnits(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitcoin_units"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_bitcoin_units:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setBuyLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "buyLevel"    # Ljava/lang/Integer;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_buyLevel:Ljava/lang/Integer;

    .line 156
    return-void
.end method

.method public setBuyLimit(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "buyLimit"    # Lorg/joda/money/Money;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/coinbase/v1/deserializer/MoneyDeserializer;
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_buyLimit:Lorg/joda/money/Money;

    .line 173
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_countryCode:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setDob(Ljava/lang/String;)V
    .locals 0
    .param p1, "dob"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_dob:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_email:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setEmailVerified(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "email_verified"    # Ljava/lang/Boolean;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_email_verified:Ljava/lang/Boolean;

    .line 123
    return-void
.end method

.method public setFeatureFlags(Ljava/util/List;)V
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
    .line 301
    .local p1, "featureFlags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_featureFlags:Ljava/util/List;

    .line 302
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_firstName:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_id:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_lastName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_location:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setMerchant(Lcom/coinbase/v1/entity/Merchant;)V
    .locals 0
    .param p1, "merchant"    # Lcom/coinbase/v1/entity/Merchant;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_merchant:Lcom/coinbase/v1/entity/Merchant;

    .line 198
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_name:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setNativeCurrency(Lorg/joda/money/CurrencyUnit;)V
    .locals 0
    .param p1, "nativeCurrency"    # Lorg/joda/money/CurrencyUnit;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_nativeCurrency:Lorg/joda/money/CurrencyUnit;

    .line 139
    return-void
.end method

.method public setNeedsToReacceptUserAgreement(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "needsToReacceptUserAgreement"    # Ljava/lang/Boolean;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_needsToReacceptUserAgreement:Ljava/lang/Boolean;

    .line 334
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_password:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setProfileDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "profile_description"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_profile_description:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setReceiveAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiveAddress"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_receiveAddress:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setReferrerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "referrerId"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_referrerId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setRegionalAgreementRequired(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "regionalAgreementRequired"    # Ljava/lang/Boolean;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_regionalAgreementRequired:Ljava/lang/Boolean;

    .line 326
    return-void
.end method

.method public setResidentialAddress(Lcom/coinbase/v1/entity/ResidentialAddress;)V
    .locals 0
    .param p1, "residentialAddress"    # Lcom/coinbase/v1/entity/ResidentialAddress;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_residentialAddress:Lcom/coinbase/v1/entity/ResidentialAddress;

    .line 262
    return-void
.end method

.method public setSellLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sellLevel"    # Ljava/lang/Integer;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_sellLevel:Ljava/lang/Integer;

    .line 164
    return-void
.end method

.method public setSellLimit(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "sellLimit"    # Lorg/joda/money/Money;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/coinbase/v1/deserializer/MoneyDeserializer;
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_sellLimit:Lorg/joda/money/Money;

    .line 182
    return-void
.end method

.method public setStateUnsupported(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "stateUnsupported"    # Ljava/lang/Boolean;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_stateUnsupported:Ljava/lang/Boolean;

    .line 318
    return-void
.end method

.method public setStateVerificationRequired(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "stateVerificationRequired"    # Ljava/lang/Boolean;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_stateVerificationRequired:Ljava/lang/Boolean;

    .line 310
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_timeZone:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/coinbase/v1/entity/User;->_username:Ljava/lang/String;

    .line 210
    return-void
.end method
