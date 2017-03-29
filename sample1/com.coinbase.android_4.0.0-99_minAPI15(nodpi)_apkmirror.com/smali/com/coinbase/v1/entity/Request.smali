.class public Lcom/coinbase/v1/entity/Request;
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

.field private _button:Lcom/coinbase/v1/entity/Button;

.field private _clientId:Ljava/lang/String;

.field private _commit:Ljava/lang/Boolean;

.field private _currency:Ljava/lang/String;

.field private _paymentMethodId:Ljava/lang/String;

.field private _qty:Ljava/lang/Double;

.field private _report:Lcom/coinbase/v1/entity/Report;

.field private _scopes:Ljava/lang/String;

.field private _tokenId:Ljava/lang/String;

.field private _transaction:Lcom/coinbase/v1/entity/Transaction;

.field private _user:Lcom/coinbase/v1/entity/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/coinbase/v1/entity/Account;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_account:Lcom/coinbase/v1/entity/Account;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/coinbase/v1/entity/Address;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_address:Lcom/coinbase/v1/entity/Address;

    return-object v0
.end method

.method public getApplication()Lcom/coinbase/v1/entity/Application;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_application:Lcom/coinbase/v1/entity/Application;

    return-object v0
.end method

.method public getButton()Lcom/coinbase/v1/entity/Button;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_button:Lcom/coinbase/v1/entity/Button;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_commit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_currency:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getQty()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_qty:Ljava/lang/Double;

    return-object v0
.end method

.method public getReport()Lcom/coinbase/v1/entity/Report;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_report:Lcom/coinbase/v1/entity/Report;

    return-object v0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_scopes:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_tokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v1/entity/Transaction;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    return-object v0
.end method

.method public getUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/coinbase/v1/entity/Request;->_user:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public setAccount(Lcom/coinbase/v1/entity/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v1/entity/Account;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_account:Lcom/coinbase/v1/entity/Account;

    .line 106
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_accountId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setAddress(Lcom/coinbase/v1/entity/Address;)V
    .locals 0
    .param p1, "address"    # Lcom/coinbase/v1/entity/Address;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_address:Lcom/coinbase/v1/entity/Address;

    .line 42
    return-void
.end method

.method public setApplication(Lcom/coinbase/v1/entity/Application;)V
    .locals 0
    .param p1, "application"    # Lcom/coinbase/v1/entity/Application;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_application:Lcom/coinbase/v1/entity/Application;

    .line 130
    return-void
.end method

.method public setButton(Lcom/coinbase/v1/entity/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_button:Lcom/coinbase/v1/entity/Button;

    .line 98
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_clientId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCommit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "commit"    # Ljava/lang/Boolean;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_commit:Ljava/lang/Boolean;

    .line 146
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_currency:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPaymentMethodId(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMethodId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_paymentMethodId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setQty(Ljava/lang/Double;)V
    .locals 0
    .param p1, "qty"    # Ljava/lang/Double;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_qty:Ljava/lang/Double;

    .line 82
    return-void
.end method

.method public setReport(Lcom/coinbase/v1/entity/Report;)V
    .locals 0
    .param p1, "report"    # Lcom/coinbase/v1/entity/Report;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_report:Lcom/coinbase/v1/entity/Report;

    .line 34
    return-void
.end method

.method public setScopes(Ljava/lang/String;)V
    .locals 0
    .param p1, "scopes"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_scopes:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTokenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenId"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_tokenId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setTransaction(Lcom/coinbase/v1/entity/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    .line 114
    return-void
.end method

.method public setUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/coinbase/v1/entity/Request;->_user:Lcom/coinbase/v1/entity/User;

    .line 66
    return-void
.end method
