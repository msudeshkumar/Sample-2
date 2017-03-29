.class public Lcom/coinbase/api/internal/entity/AchRequest;
.super Ljava/lang/Object;
.source "AchRequest.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x577448dc79ac825fL


# instance fields
.field private _accountId:Ljava/lang/String;

.field private _accountNumber:Ljava/lang/String;

.field private _accountType:Ljava/lang/String;

.field private _achAccountId:Ljava/lang/String;

.field private _achSetupSessionId:Ljava/lang/String;

.field private _amount:Ljava/lang/String;

.field private _amount1:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amount_1"
    .end annotation
.end field

.field private _amount2:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "amount_2"
    .end annotation
.end field

.field private _commit:Ljava/lang/Boolean;

.field private _customerName:Ljava/lang/String;

.field private _institution:Lcom/coinbase/api/internal/entity/Institution;

.field private _mfaArray:[Ljava/lang/String;

.field private _mfaString:Ljava/lang/String;

.field private _password:Ljava/lang/String;

.field private _paymentMethodId:Ljava/lang/String;

.field private _pin:Ljava/lang/String;

.field private _routingNumber:Ljava/lang/String;

.field private _sendOptionMask:Ljava/lang/String;

.field private _type:Ljava/lang/String;

.field private _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAchAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_achAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAchSetupSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_achSetupSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_amount1:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_amount2:Ljava/lang/String;

    return-object v0
.end method

.method public getCommit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_commit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_customerName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstitution()Lcom/coinbase/api/internal/entity/Institution;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_institution:Lcom/coinbase/api/internal/entity/Institution;

    return-object v0
.end method

.method public getMfaArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_mfaArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getMfaString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_mfaString:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_pin:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_routingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSendOptionMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_sendOptionMask:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_accountId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountNumber"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_accountNumber:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_accountType:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setAchAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1, "achAccountId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_achAccountId:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setAchSetupSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "achSetupSessionId"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_achSetupSessionId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_amount:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setAmount1(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount1"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_amount1:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setAmount2(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount2"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_amount2:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCommit(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "commit"    # Ljava/lang/Boolean;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_commit:Ljava/lang/Boolean;

    .line 150
    return-void
.end method

.method public setCustomerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "customerName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_customerName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setInstitution(Lcom/coinbase/api/internal/entity/Institution;)V
    .locals 0
    .param p1, "institution"    # Lcom/coinbase/api/internal/entity/Institution;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_institution:Lcom/coinbase/api/internal/entity/Institution;

    .line 70
    return-void
.end method

.method public setMfaArray([Ljava/lang/String;)V
    .locals 0
    .param p1, "mfaArray"    # [Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_mfaArray:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setMfaString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mfaString"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_mfaString:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_password:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPaymentMethodId(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMethodId"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_paymentMethodId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_pin:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setRoutingNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "routingNumber"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_routingNumber:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSendOptionMask(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendOptionMask"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_sendOptionMask:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_type:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/coinbase/api/internal/entity/AchRequest;->_username:Ljava/lang/String;

    .line 62
    return-void
.end method
