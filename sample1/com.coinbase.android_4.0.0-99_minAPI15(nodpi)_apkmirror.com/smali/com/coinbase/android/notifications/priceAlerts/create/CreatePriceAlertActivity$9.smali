.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CreatePriceAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareScrollView(DDIDI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

.field final synthetic val$cellWidth:I

.field final synthetic val$currentValue:D

.field final synthetic val$increment:D

.field final synthetic val$placeholderWidth:I

.field final synthetic val$scrollViewContentWidth:I

.field final synthetic val$significantDigits:I

.field final synthetic val$totalRange:D


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;IIIDIDD)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iput p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$placeholderWidth:I

    iput p3, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$cellWidth:I

    iput p4, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$scrollViewContentWidth:I

    iput-wide p5, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$totalRange:D

    iput p7, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$significantDigits:I

    iput-wide p8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$increment:D

    iput-wide p10, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$currentValue:D

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 18
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 416
    invoke-super/range {p0 .. p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v12}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 419
    .local v3, "firstItemPosition":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->linearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;
    invoke-static {v12}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 421
    .local v4, "firstVisibleItem":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 423
    .local v5, "firstVisibleItemOffset":I
    if-nez v3, :cond_3

    .line 426
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iput v5, v12, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    .line 433
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget v12, v12, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$scrollViewContentWidth:I

    int-to-double v14, v14

    div-double v8, v12, v14

    .line 434
    .local v8, "percentageOffset":D
    const-wide/16 v12, 0x0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_4

    .line 435
    const-wide/16 v8, 0x0

    .line 438
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$totalRange:D

    mul-double/2addr v14, v8

    # setter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v12, v14, v15}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$602(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D

    .line 442
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v13}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v14

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->numberOfDigits(D)I
    invoke-static {v12, v14, v15}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1700(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$significantDigits:I

    sub-int/2addr v12, v13

    add-int/lit8 v7, v12, 0x1

    .line 443
    .local v7, "selectedPriceSignificantDigits":I
    if-gez v7, :cond_1

    .line 444
    const/4 v7, 0x0

    .line 448
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v12}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$increment:D

    sget v16, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->TICK_MARKS_PER_INCREMENT:I

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 449
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    const-wide/16 v14, 0x0

    # setter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v12, v14, v15}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$602(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v13}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v14

    const/4 v13, 0x1

    invoke-static {v14, v15, v7, v13}, Lcom/coinbase/android/utils/Utils;->roundToSignificantFigures(DIZ)D

    move-result-wide v14

    # setter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v12, v14, v15}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$602(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;D)D

    .line 454
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v12}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v12

    double-to-long v10, v12

    .line 456
    .local v10, "priceToDisplay":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->unit:Lorg/joda/money/CurrencyUnit;
    invoke-static {v12}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$700(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)Lorg/joda/money/CurrencyUnit;

    move-result-object v12

    invoke-virtual {v12}, Lorg/joda/money/CurrencyUnit;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/coinbase/android/utils/MoneyUtils;->moneyFromValue(Ljava/lang/String;Ljava/lang/String;)Lorg/joda/money/Money;

    move-result-object v6

    .line 457
    .local v6, "money":Lorg/joda/money/Money;
    sget-object v12, Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;->TRADITIONAL:Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;

    sget-object v13, Lcom/coinbase/android/utils/MoneyUtils$Options;->ROUND_0_DIGITS:Lcom/coinbase/android/utils/MoneyUtils$Options;

    sget-object v14, Lcom/coinbase/android/utils/MoneyUtils$Options;->EXCLUDE_CURRENCY_SYMBOL:Lcom/coinbase/android/utils/MoneyUtils$Options;

    .line 459
    invoke-static {v13, v14}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v13

    .line 457
    invoke-static {v6, v12, v13}, Lcom/coinbase/android/utils/MoneyUtils;->formatMoney(Lorg/joda/money/BigMoneyProvider;Lcom/coinbase/android/utils/MoneyUtils$CurrencyType;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "amount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iget-object v12, v12, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->dollarTextView:Landroid/widget/TextView;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$currentValue:D

    double-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    # getter for: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->selectedPrice:D
    invoke-static {v13}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$600(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->updateOperatorViews(JJ)V
    invoke-static {v12, v14, v15, v0, v1}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1800(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;JJ)V

    .line 463
    return-void

    .line 430
    .end local v2    # "amount":Ljava/lang/String;
    .end local v6    # "money":Lorg/joda/money/Money;
    .end local v7    # "selectedPriceSignificantDigits":I
    .end local v8    # "percentageOffset":D
    .end local v10    # "priceToDisplay":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$placeholderWidth:I

    add-int/lit8 v14, v3, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$9;->val$cellWidth:I

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/2addr v13, v5

    iput v13, v12, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->xOffset:I

    goto/16 :goto_0

    .line 436
    .restart local v8    # "percentageOffset":D
    :cond_4
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v8, v12

    if-lez v12, :cond_0

    .line 437
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1
.end method
