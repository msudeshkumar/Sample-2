.class public Lcom/coinbase/android/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccount(Ljava/util/List;Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data;
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/v2/models/account/Data;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/coinbase/v2/models/account/Data;"
        }
    .end annotation

    .prologue
    .local p0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    const/4 v1, 0x0

    .line 55
    if-nez p1, :cond_0

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 58
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 59
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_2
    move-object v0, v1

    .line 63
    goto :goto_0
.end method

.method public static getAccountBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;
    .locals 2
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Balance;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getBalance()Lcom/coinbase/v2/models/account/Balance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Balance;->getAmount()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountIcon(Lcom/coinbase/v2/models/account/Data;)I
    .locals 3
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 35
    sget-object v1, Lcom/coinbase/android/utils/AccountUtils$1;->$SwitchMap$com$coinbase$v2$models$account$Data$Type:[I

    invoke-static {p0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    const v0, 0x7f020052

    .line 51
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 37
    .end local v0    # "iconId":I
    :pswitch_0
    const v0, 0x7f020049

    .line 38
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 40
    .end local v0    # "iconId":I
    :pswitch_1
    const v0, 0x7f02004c

    .line 41
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 43
    .end local v0    # "iconId":I
    :pswitch_2
    const v0, 0x7f02004c

    .line 44
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 46
    .end local v0    # "iconId":I
    :pswitch_3
    const v0, 0x7f02004f

    .line 47
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getAccountIconSelected(Lcom/coinbase/v2/models/account/Data;)I
    .locals 3
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 14
    sget-object v1, Lcom/coinbase/android/utils/AccountUtils$1;->$SwitchMap$com$coinbase$v2$models$account$Data$Type:[I

    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coinbase/v2/models/account/Data$Type;->valueOf(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 28
    const v0, 0x7f02010e

    .line 30
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 16
    .end local v0    # "iconId":I
    :pswitch_0
    const v0, 0x7f02010e

    .line 17
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 19
    .end local v0    # "iconId":I
    :pswitch_1
    const v0, 0x7f0200f9

    .line 20
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 22
    .end local v0    # "iconId":I
    :pswitch_2
    const v0, 0x7f0200f9

    .line 23
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 25
    .end local v0    # "iconId":I
    :pswitch_3
    const v0, 0x7f02010d

    .line 26
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 14
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getAccountNativeBalanceMoney(Lcom/coinbase/v2/models/account/Data;)Lorg/joda/money/Money;
    .locals 2
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/NativeBalance;->getCurrency()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getNativeBalance()Lcom/coinbase/v2/models/account/NativeBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/NativeBalance;->getAmount()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountType(Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data$Type;
    .locals 1
    .param p0, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coinbase/v2/models/account/Data$Type;->create(Ljava/lang/String;)Lcom/coinbase/v2/models/account/Data$Type;

    move-result-object v0

    return-object v0
.end method
