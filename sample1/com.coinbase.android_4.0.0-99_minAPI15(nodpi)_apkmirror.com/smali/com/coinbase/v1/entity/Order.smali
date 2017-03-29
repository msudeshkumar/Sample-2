.class public Lcom/coinbase/v1/entity/Order;
.super Ljava/lang/Object;
.source "Order.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Order$Status;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x721763d0de6afe67L


# instance fields
.field private _button:Lcom/coinbase/v1/entity/Button;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _custom:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _receiveAddress:Ljava/lang/String;

.field private _refundAddress:Ljava/lang/String;

.field private _status:Lcom/coinbase/v1/entity/Order$Status;

.field private _totalBtc:Lorg/joda/money/Money;

.field private _totalNative:Lorg/joda/money/Money;

.field private _transaction:Lcom/coinbase/v1/entity/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButton()Lcom/coinbase/v1/entity/Button;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_button:Lcom/coinbase/v1/entity/Button;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_custom:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiveAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_receiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_refundAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/coinbase/v1/entity/Order$Status;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_status:Lcom/coinbase/v1/entity/Order$Status;

    return-object v0
.end method

.method public getTotalBtc()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_totalBtc:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTotalNative()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_totalNative:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTransaction()Lcom/coinbase/v1/entity/Transaction;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/coinbase/v1/entity/Order;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    return-object v0
.end method

.method public setButton(Lcom/coinbase/v1/entity/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_button:Lcom/coinbase/v1/entity/Button;

    .line 115
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_createdAt:Lorg/joda/time/DateTime;

    .line 67
    return-void
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "custom"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_custom:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_id:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setReceiveAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "receiveAddress"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_receiveAddress:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setRefundAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "refundAddress"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_refundAddress:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setStatus(Lcom/coinbase/v1/entity/Order$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/coinbase/v1/entity/Order$Status;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_status:Lcom/coinbase/v1/entity/Order$Status;

    .line 75
    return-void
.end method

.method public setTotalBtc(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "totalBtc"    # Lorg/joda/money/Money;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_totalBtc:Lorg/joda/money/Money;

    .line 83
    return-void
.end method

.method public setTotalNative(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "totalNative"    # Lorg/joda/money/Money;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_totalNative:Lorg/joda/money/Money;

    .line 91
    return-void
.end method

.method public setTransaction(Lcom/coinbase/v1/entity/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/coinbase/v1/entity/Transaction;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/coinbase/v1/entity/Order;->_transaction:Lcom/coinbase/v1/entity/Transaction;

    .line 131
    return-void
.end method
