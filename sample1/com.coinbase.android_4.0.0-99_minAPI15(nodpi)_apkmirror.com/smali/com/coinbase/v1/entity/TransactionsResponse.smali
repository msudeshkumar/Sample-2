.class public Lcom/coinbase/v1/entity/TransactionsResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "TransactionsResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x18214f54c22921a3L


# instance fields
.field private _balance:Lorg/joda/money/Money;

.field private _currentUser:Lcom/coinbase/v1/entity/User;

.field private _nativeBalance:Lorg/joda/money/Money;

.field private _transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_balance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getCurrentUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_currentUser:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public getNativeBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_nativeBalance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_transactions:Ljava/util/List;

    return-object v0
.end method

.method public setBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "balance"    # Lorg/joda/money/Money;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_balance:Lorg/joda/money/Money;

    .line 43
    return-void
.end method

.method public setCurrentUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "currentUser"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_currentUser:Lcom/coinbase/v1/entity/User;

    .line 35
    return-void
.end method

.method public setNativeBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "nativeBalance"    # Lorg/joda/money/Money;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_nativeBalance:Lorg/joda/money/Money;

    .line 51
    return-void
.end method

.method public setTransactions(Ljava/util/List;)V
    .locals 0
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        converter = Lcom/coinbase/v1/deserializer/TransactionsLifter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/Transaction;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/TransactionsResponse;->_transactions:Ljava/util/List;

    .line 27
    return-void
.end method
