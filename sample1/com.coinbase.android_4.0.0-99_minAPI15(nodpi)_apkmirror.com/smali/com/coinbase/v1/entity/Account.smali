.class public Lcom/coinbase/v1/entity/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Account$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7279a943f3738fa8L


# instance fields
.field private _active:Ljava/lang/Boolean;

.field private _balance:Lorg/joda/money/Money;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _id:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _nativeBalance:Lorg/joda/money/Money;

.field private _primary:Ljava/lang/Boolean;

.field private _type:Lcom/coinbase/v1/entity/Account$Type;

.field private _uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_balance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_nativeBalance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getType()Lcom/coinbase/v1/entity/Account$Type;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_type:Lcom/coinbase/v1/entity/Account$Type;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/coinbase/v1/entity/Account;->_primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Account;->_active:Ljava/lang/Boolean;

    .line 117
    return-void
.end method

.method public setBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "balance"    # Lorg/joda/money/Money;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_balance:Lorg/joda/money/Money;

    .line 85
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_createdAt:Lorg/joda/time/DateTime;

    .line 101
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_id:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setNativeBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "nativeBalance"    # Lorg/joda/money/Money;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_nativeBalance:Lorg/joda/money/Money;

    .line 93
    return-void
.end method

.method public setPrimary(Z)V
    .locals 1
    .param p1, "primary"    # Z

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Account;->_primary:Ljava/lang/Boolean;

    .line 109
    return-void
.end method

.method public setType(Lcom/coinbase/v1/entity/Account$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/v1/entity/Account$Type;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_type:Lcom/coinbase/v1/entity/Account$Type;

    .line 125
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/coinbase/v1/entity/Account;->_uuid:Ljava/lang/String;

    .line 61
    return-void
.end method
