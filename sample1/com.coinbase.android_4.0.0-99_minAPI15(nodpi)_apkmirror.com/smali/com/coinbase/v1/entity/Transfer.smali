.class public Lcom/coinbase/v1/entity/Transfer;
.super Ljava/lang/Object;
.source "Transfer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Transfer$Status;,
        Lcom/coinbase/v1/entity/Transfer$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4f5716c454e1264cL


# instance fields
.field private _account:Ljava/lang/String;

.field private _btc:Lorg/joda/money/Money;

.field private _code:Ljava/lang/String;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _description:Ljava/lang/String;

.field private _fees:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;"
        }
    .end annotation
.end field

.field private _payoutDate:Lorg/joda/time/DateTime;

.field private _status:Lcom/coinbase/v1/entity/Transfer$Status;

.field private _subtotal:Lorg/joda/money/Money;

.field private _total:Lorg/joda/money/Money;

.field private _transactionId:Ljava/lang/String;

.field private _type:Lcom/coinbase/v1/entity/Transfer$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_account:Ljava/lang/String;

    return-object v0
.end method

.method public getBtc()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_btc:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getFees()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_fees:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPayoutDate()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_payoutDate:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getStatus()Lcom/coinbase/v1/entity/Transfer$Status;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_status:Lcom/coinbase/v1/entity/Transfer$Status;

    return-object v0
.end method

.method public getSubtotal()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_subtotal:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTotal()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_total:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/coinbase/v1/entity/Transfer$Type;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/v1/entity/Transfer;->_type:Lcom/coinbase/v1/entity/Transfer$Type;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_account:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setBtc(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "btc"    # Lorg/joda/money/Money;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_btc:Lorg/joda/money/Money;

    .line 140
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_code:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_createdAt:Lorg/joda/time/DateTime;

    .line 107
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_description:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setFees(Ljava/util/HashMap;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        as = Ljava/util/HashMap;
        contentAs = Lorg/joda/money/Money;
        keyAs = Ljava/lang/String;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/money/Money;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "fees":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/joda/money/Money;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_fees:Ljava/util/HashMap;

    .line 124
    return-void
.end method

.method public setPayoutDate(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "payoutDate"    # Lorg/joda/time/DateTime;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_payoutDate:Lorg/joda/time/DateTime;

    .line 115
    return-void
.end method

.method public setStatus(Lcom/coinbase/v1/entity/Transfer$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/coinbase/v1/entity/Transfer$Status;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_status:Lcom/coinbase/v1/entity/Transfer$Status;

    .line 91
    return-void
.end method

.method public setSubtotal(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "subtotal"    # Lorg/joda/money/Money;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_subtotal:Lorg/joda/money/Money;

    .line 148
    return-void
.end method

.method public setTotal(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "total"    # Lorg/joda/money/Money;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_total:Lorg/joda/money/Money;

    .line 156
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_transactionId:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setType(Lcom/coinbase/v1/entity/Transfer$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/v1/entity/Transfer$Type;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/v1/entity/Transfer;->_type:Lcom/coinbase/v1/entity/Transfer$Type;

    .line 83
    return-void
.end method
