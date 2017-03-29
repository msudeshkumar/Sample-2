.class public Lcom/coinbase/v1/entity/AccountChangesResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "AccountChangesResponse.java"


# instance fields
.field private accountChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/AccountChange;",
            ">;"
        }
    .end annotation
.end field

.field private balance:Lorg/joda/money/Money;

.field private currentUser:Lcom/coinbase/v1/entity/User;

.field private nativeBalance:Lorg/joda/money/Money;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/AccountChange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->accountChanges:Ljava/util/List;

    return-object v0
.end method

.method public getBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->balance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getCurrentUser()Lcom/coinbase/v1/entity/User;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->currentUser:Lcom/coinbase/v1/entity/User;

    return-object v0
.end method

.method public getNativeBalance()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->nativeBalance:Lorg/joda/money/Money;

    return-object v0
.end method

.method public setAccountChanges(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v1/entity/AccountChange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "accountChanges":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v1/entity/AccountChange;>;"
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->accountChanges:Ljava/util/List;

    .line 43
    return-void
.end method

.method public setBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "balance"    # Lorg/joda/money/Money;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->balance:Lorg/joda/money/Money;

    .line 27
    return-void
.end method

.method public setCurrentUser(Lcom/coinbase/v1/entity/User;)V
    .locals 0
    .param p1, "currentUser"    # Lcom/coinbase/v1/entity/User;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->currentUser:Lcom/coinbase/v1/entity/User;

    .line 19
    return-void
.end method

.method public setNativeBalance(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "nativeBalance"    # Lorg/joda/money/Money;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/coinbase/v1/entity/AccountChangesResponse;->nativeBalance:Lorg/joda/money/Money;

    .line 35
    return-void
.end method
