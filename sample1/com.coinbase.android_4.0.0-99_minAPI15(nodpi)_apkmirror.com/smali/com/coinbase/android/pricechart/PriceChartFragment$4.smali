.class Lcom/coinbase/android/pricechart/PriceChartFragment$4;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;->applyPriceData(Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/coinbase/v2/models/spotPrice/SpotPrice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

.field final synthetic val$prices:Ljava/util/List;

.field final synthetic val$type:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;Ljava/util/List;Lcom/coinbase/android/pricechart/PriceChartFragment$Period;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iput-object p2, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$prices:Ljava/util/List;

    iput-object p3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$type:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 775
    return-void
.end method

.method public onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 12
    .param p2, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Response",
            "<",
            "Lcom/coinbase/v2/models/spotPrice/SpotPrice;",
            ">;",
            "Lretrofit/Retrofit;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Lretrofit/Response;, "Lretrofit/Response<Lcom/coinbase/v2/models/spotPrice/SpotPrice;>;"
    const/4 v11, 0x0

    .line 713
    invoke-virtual {p1}, Lretrofit/Response;->isSuccess()Z

    move-result v7

    if-nez v7, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$prices:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 719
    invoke-virtual {p1}, Lretrofit/Response;->body()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coinbase/v2/models/spotPrice/SpotPrice;

    invoke-virtual {v7}, Lcom/coinbase/v2/models/spotPrice/SpotPrice;->getData()Lcom/coinbase/v2/models/spotPrice/Data;

    move-result-object v4

    .line 720
    .local v4, "spotPriceData":Lcom/coinbase/v2/models/spotPrice/Data;
    invoke-virtual {v4}, Lcom/coinbase/v2/models/spotPrice/Data;->getCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/coinbase/v2/models/spotPrice/Data;->getAmount()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v3

    .line 722
    .local v3, "spotPrice":Lorg/joda/money/Money;
    sget-object v7, Lcom/coinbase/android/pricechart/PriceChartFragment$5;->$SwitchMap$com$coinbase$android$pricechart$PriceChartFragment$Period:[I

    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$type:Lcom/coinbase/android/pricechart/PriceChartFragment$Period;

    invoke-virtual {v8}, Lcom/coinbase/android/pricechart/PriceChartFragment$Period;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 751
    :goto_1
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$prices:Ljava/util/List;

    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$prices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coinbase/api/internal/models/priceCharts/Price;

    .line 752
    .local v2, "price":Lcom/coinbase/api/internal/models/priceCharts/Price;
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    # getter for: Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrency:Lorg/joda/money/CurrencyUnit;
    invoke-static {v7}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$1000(Lcom/coinbase/android/pricechart/PriceChartFragment;)Lorg/joda/money/CurrencyUnit;

    move-result-object v7

    invoke-virtual {v2}, Lcom/coinbase/api/internal/models/priceCharts/Price;->getPrice()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    float-to-double v8, v8

    sget-object v10, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v7, v8, v9, v10}, Lorg/joda/money/Money;->of(Lorg/joda/money/CurrencyUnit;DLjava/math/RoundingMode;)Lorg/joda/money/Money;

    move-result-object v1

    .line 754
    .local v1, "historicPriceMoney":Lorg/joda/money/Money;
    invoke-virtual {v3, v1}, Lorg/joda/money/Money;->minus(Lorg/joda/money/Money;)Lorg/joda/money/Money;

    move-result-object v0

    .line 757
    .local v0, "change":Lorg/joda/money/Money;
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mCurrentPrice:Landroid/widget/TextView;

    sget-object v8, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v9, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 759
    invoke-static {v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    .line 757
    invoke-static {v3, v8, v9}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceChange:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/joda/money/Money;->abs()Lorg/joda/money/Money;

    move-result-object v8

    sget-object v9, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v10, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 762
    invoke-static {v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v10

    .line 760
    invoke-static {v8, v9, v10}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    invoke-virtual {v0}, Lorg/joda/money/Money;->isPositiveOrZero()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 766
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceChange:Landroid/widget/TextView;

    const v8, 0x7f02011c

    invoke-virtual {v7, v11, v11, v8, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 724
    .end local v0    # "change":Lorg/joda/money/Money;
    .end local v1    # "historicPriceMoney":Lorg/joda/money/Money;
    .end local v2    # "price":Lcom/coinbase/api/internal/models/priceCharts/Price;
    :pswitch_0
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChangeScope:Landroid/widget/TextView;

    const v8, 0x7f070210

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 728
    :pswitch_1
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChangeScope:Landroid/widget/TextView;

    const v8, 0x7f070211

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 732
    :pswitch_2
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChangeScope:Landroid/widget/TextView;

    const v8, 0x7f07020e

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 736
    :pswitch_3
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChangeScope:Landroid/widget/TextView;

    const v8, 0x7f07020d

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 740
    :pswitch_4
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChangeScope:Landroid/widget/TextView;

    const v8, 0x7f07020f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 744
    :pswitch_5
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$prices:Ljava/util/List;

    iget-object v8, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->val$prices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coinbase/api/internal/models/priceCharts/Price;

    invoke-virtual {v7}, Lcom/coinbase/api/internal/models/priceCharts/Price;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/coinbase/android/utils/Utils;->getDateTimeFrom(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v5

    .line 745
    .local v5, "time":Lorg/joda/time/DateTime;
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    const v8, 0x7f07020c

    invoke-virtual {v7, v8}, Lcom/coinbase/android/pricechart/PriceChartFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "MMMM, yyyy"

    invoke-virtual {v5, v9}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 746
    .local v6, "timeString":Ljava/lang/String;
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mChangeScope:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 768
    .end local v5    # "time":Lorg/joda/time/DateTime;
    .end local v6    # "timeString":Ljava/lang/String;
    .restart local v0    # "change":Lorg/joda/money/Money;
    .restart local v1    # "historicPriceMoney":Lorg/joda/money/Money;
    .restart local v2    # "price":Lcom/coinbase/api/internal/models/priceCharts/Price;
    :cond_2
    iget-object v7, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$4;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v7, v7, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceChange:Landroid/widget/TextView;

    const v8, 0x7f02011b

    invoke-virtual {v7, v11, v11, v8, v11}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
