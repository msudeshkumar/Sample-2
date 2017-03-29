.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;
.super Lcom/coinbase/android/transfers/FetchExchangeRatesTask;
.source "IAVLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshExchangeRateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    .line 613
    invoke-direct {p0, p2}, Lcom/coinbase/android/transfers/FetchExchangeRatesTask;-><init>(Landroid/content/Context;)V

    .line 614
    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 610
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;->onSuccess(Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "rates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/math/BigDecimal;>;"
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-virtual {v4}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/joda/money/CurrencyUnit;->USD:Lorg/joda/money/CurrencyUnit;

    invoke-virtual {v5}, Lorg/joda/money/CurrencyUnit;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_to_btc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    .line 621
    .local v2, "factor":Ljava/math/BigDecimal;
    sget v4, Lcom/coinbase/android/utils/MoneyUtils;->ONE_HUNDRED:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Lcom/coinbase/android/utils/MoneyUtils;->BTC_BITS:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 622
    .local v0, "bits":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "bitsString":Ljava/lang/String;
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    iget-object v4, v4, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->mBitsEstimate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$RefreshExchangeRateTask;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    const v6, 0x7f070095

    invoke-virtual {v5, v6}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    .end local v0    # "bits":Ljava/math/BigDecimal;
    .end local v1    # "bitsString":Ljava/lang/String;
    .end local v2    # "factor":Ljava/math/BigDecimal;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method
