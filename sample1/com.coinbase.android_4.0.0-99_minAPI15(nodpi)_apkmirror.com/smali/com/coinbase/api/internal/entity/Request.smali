.class public Lcom/coinbase/api/internal/entity/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b72f507321235b2L


# instance fields
.field private _account:Lcom/coinbase/v1/entity/Account;

.field private _accountId:Ljava/lang/String;

.field private _address:Lcom/coinbase/v1/entity/Address;

.field private _application:Lcom/coinbase/v1/entity/Application;

.field private _applicationId:Ljava/lang/String;

.field private _bankName:Ljava/lang/String;

.field private _button:Lcom/coinbase/v1/entity/Button;

.field private _clientId:Ljava/lang/String;

.field private _commit:Ljava/lang/Boolean;

.field private _currency:Ljava/lang/String;

.field private _deviceId:Ljava/lang/String;

.field private _googleNowAuthorizationCode:Ljava/lang/String;

.field private _iban:Ljava/lang/String;

.field private _locale:Ljava/lang/String;

.field private _meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

.field private _paymentMethodId:Ljava/lang/String;

.field private _phoneNumber:Lcom/coinbase/api/internal/entity/PhoneNumber;

.field private _platform:Ljava/lang/String;

.field private _qty:Ljava/lang/Double;

.field private _redirectUri:Ljava/lang/String;

.field private _report:Lcom/coinbase/v1/entity/Report;

.field private _responseType:Ljava/lang/String;

.field private _scope:Ljava/lang/String;

.field private _scopes:Ljava/lang/String;

.field private _state:Ljava/lang/String;

.field private _swift:Ljava/lang/String;

.field private _token:Ljava/lang/String;

.field private _tokenId:Ljava/lang/String;

.field private _transaction:Lcom/coinbase/v1/entity/Transaction;

.field private _type:Ljava/lang/String;

.field private _tzOffset:Ljava/lang/String;

.field private _user:Lcom/coinbase/v1/entity/User;

.field private _userConfirmed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_account:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/coinbase/v1/entity/Address;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_address:Lcom/coinbase/v1/entity/Address;

    return-object v0
.end method

.method public getApplication()Lcom/coinbase/v1/entity/Application;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_application:Lcom/coinbase/v1/entity/Application;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getButton()Lcom/coinbase/v1/entity/Button;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_button:Lcom/coinbase/v1/entity/Button;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_commit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleNowAuthorizationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_googleNowAuthorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIban()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_iban:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_locale:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    return-object v0
.end method

.method public getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Lcom/coinbase/api/internal/entity/PhoneNumber;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_phoneNumber:Lcom/coinbase/api/internal/entity/PhoneNumber;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_platform:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_qty:Ljava/lang/Double;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReport()Lcom/coinbase/v1/entity/Report;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_report:Lcom/coinbase/v1/entity/Report;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_responseType:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_scope:Ljava/lang/String;

    return-object v0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_scopes:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_state:Ljava/lang/String;

    return-object v0
.end method

.method public getSwift()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_swift:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v1/entity/Transaction;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getTzOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_tzOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_user:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public getUserConfirmed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_userConfirmed:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_account:Lcom/coinbase/v1/entity/Account;

    .line 134
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_accountId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setAddress(Lcom/coinbase/v1/entity/Address;)V
    .locals 0
    .param p1, "address"    # Lcom/coinbase/v1/entity/Address;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_address:Lcom/coinbase/v1/entity/Address;

    .line 70
    return-void
.end method

.method public setApplication(Lcom/coinbase/v1/entity/Application;)V
    .locals 0
    .param p1, "application"    # Lcom/coinbase/v1/entity/Application;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_application:Lcom/coinbase/v1/entity/Application;

    .line 158
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_applicationId:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_bankName:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setButton(Lcom/coinbase/v1/entity/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_button:Lcom/coinbase/v1/entity/Button;

    .line 126
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_clientId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCommit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "commit"    # Ljava/lang/Boolean;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_commit:Ljava/lang/Boolean;

    .line 174
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_currency:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_deviceId:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setGoogleNowAuthorizationCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleNowAuthorizationCode"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_googleNowAuthorizationCode:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setIban(Ljava/lang/String;)V
    .locals 0
    .param p1, "iban"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_iban:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_locale:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setMeta(Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;)V
    .locals 0
    .param p1, "meta"    # Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_meta:Lcom/coinbase/api/internal/entity/OAuthAccessGrant$Meta;

    .line 302
    return-void
.end method

.method public setPaymentMethodId(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMethodId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_paymentMethodId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPhoneNumber(Lcom/coinbase/api/internal/entity/PhoneNumber;)V
    .locals 0
    .param p1, "phoneNumber"    # Lcom/coinbase/api/internal/entity/PhoneNumber;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_phoneNumber:Lcom/coinbase/api/internal/entity/PhoneNumber;

    .line 190
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_platform:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setQty(Ljava/lang/Double;)V
    .locals 0
    .param p1, "qty"    # Ljava/lang/Double;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_qty:Ljava/lang/Double;

    .line 110
    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "redirectUri"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_redirectUri:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setReport(Lcom/coinbase/v1/entity/Report;)V
    .locals 0
    .param p1, "report"    # Lcom/coinbase/v1/entity/Report;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_report:Lcom/coinbase/v1/entity/Report;

    .line 62
    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseType"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_responseType:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_scope:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setScopes(Ljava/lang/String;)V
    .locals 0
    .param p1, "scopes"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_scopes:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "_state"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_state:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setSwift(Ljava/lang/String;)V
    .locals 0
    .param p1, "swift"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_swift:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_token:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_tokenId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setTransaction(Lcom/coinbase/v1/entity/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    .line 142
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_type:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setTzOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "tzOffset"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_tzOffset:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/Request;->_user:Lcom/coinbase/v1/entity/User;

    .line 94
    return-void
.end method

.method public setUserConfirmed(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "userConfirmed"    # Ljava/lang/Boolean;

    .prologue
    .line 309
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    iput-object v0, p0, Lcom/coinbase/api/internal/entity/Request;->_userConfirmed:Ljava/lang/String;

    .line 310
    return-void

    .line 309
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
