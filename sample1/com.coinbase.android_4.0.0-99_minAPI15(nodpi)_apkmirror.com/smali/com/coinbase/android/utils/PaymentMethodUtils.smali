.class public Lcom/coinbase/android/utils/PaymentMethodUtils;
.super Ljava/lang/Object;
.source "PaymentMethodUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesAccountHaveBalance(Lcom/coinbase/v2/models/account/Data;)Z
    .locals 2
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    sget-object v1, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/money/Money;->isPositive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doesJumioProfilesContainType(Ljava/util/List;Lcom/coinbase/api/internal/entity/JumioProfile$Status;)Z
    .locals 3
    .param p1, "status"    # Lcom/coinbase/api/internal/entity/JumioProfile$Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/entity/JumioProfile;",
            ">;",
            "Lcom/coinbase/api/internal/entity/JumioProfile$Status;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "jumioProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/entity/JumioProfile;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/JumioProfile;

    .line 81
    .local v0, "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/JumioProfile;->getStatus()Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 85
    .end local v0    # "profile":Lcom/coinbase/api/internal/entity/JumioProfile;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUSUser(Lcom/coinbase/api/LoginManager;)Z
    .locals 2
    .param p0, "loginManager"    # Lcom/coinbase/api/LoginManager;

    .prologue
    .line 12
    invoke-interface {p0}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p0}, Lcom/coinbase/api/LoginManager;->getActiveUserCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDeposit(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;)Z
    .locals 4
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p1, "paymentMethod"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getAllowDeposit()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/FiatAccount;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 43
    goto :goto_0

    :cond_2
    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public static isValidWithdraw(Lcom/coinbase/v2/models/account/Data;Lcom/coinbase/v2/models/paymentMethods/Data;)Z
    .locals 4
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;
    .param p1, "paymentMethod"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getAllowWithdraw()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/coinbase/v2/models/paymentMethods/Data;->getFiatAccount()Lcom/coinbase/v2/models/paymentMethods/FiatAccount;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coinbase/v2/models/paymentMethods/FiatAccount;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 60
    goto :goto_0

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public static isVerifiedBankAccount(Lcom/coinbase/v2/models/paymentMethods/Data;)Z
    .locals 2
    .param p0, "paymentMethod"    # Lcom/coinbase/v2/models/paymentMethods/Data;

    .prologue
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    move-result-object v0

    .line 25
    .local v0, "type":Lcom/coinbase/v2/models/paymentMethods/Data$Type;
    invoke-virtual {p0}, Lcom/coinbase/v2/models/paymentMethods/Data;->getVerified()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->BANK_ACCOUNT:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->ACH_BANK_ACCOUNT:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->SEPA_BANK_ACCOUNT:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/coinbase/v2/models/paymentMethods/Data$Type;->DEBIT_CARD:Lcom/coinbase/v2/models/paymentMethods/Data$Type;

    if-ne v0, v1, :cond_1

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 33
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
