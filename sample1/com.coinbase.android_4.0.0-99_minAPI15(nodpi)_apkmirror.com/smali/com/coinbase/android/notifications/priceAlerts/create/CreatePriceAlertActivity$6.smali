.class Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;
.super Ljava/lang/Object;
.source "CreatePriceAlertActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareViewWithPrice(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

.field final synthetic val$incrementSignificantDigits:I

.field final synthetic val$price:D

.field final synthetic val$roundedIncrement:D

.field final synthetic val$roundedPrice:D


# direct methods
.method constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;DDDI)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    iput-wide p2, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    iput-wide p4, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedPrice:D

    iput-wide p6, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$price:D

    iput p8, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$incrementSignificantDigits:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedPrice:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    rem-double/2addr v8, v12

    sub-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedPrice:D

    add-double v18, v6, v8

    .line 343
    .local v18, "adjustedPrice":D
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v18, v6

    .line 344
    .local v4, "maxValue":D
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    div-double v6, v4, v6

    double-to-int v0, v6

    move/from16 v21, v0

    .line 346
    .local v21, "tmpItemCount":I
    const/16 v3, 0x14

    move/from16 v0, v21

    if-ge v0, v3, :cond_0

    .line 347
    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    mul-double v4, v6, v8

    .line 351
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    div-double v6, v4, v6

    double-to-int v3, v6

    add-int/lit8 v11, v3, 0x2

    .line 353
    .local v11, "itemCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    invoke-virtual {v3}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090058

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 355
    .local v2, "cellWidth":I
    add-int/lit8 v3, v11, -0x2

    mul-int v20, v2, v3

    .line 356
    .local v20, "scrollViewContentWidth":I
    move/from16 v0, v20

    int-to-double v6, v0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$price:D

    div-double/2addr v8, v4

    mul-double v14, v6, v8

    .line 358
    .local v14, "currentPosition":D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedPrice:D

    move-object/from16 v0, p0

    iget v8, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$incrementSignificantDigits:I

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareScrollView(DDIDI)V
    invoke-static/range {v3 .. v11}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1100(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;DDIDI)V

    .line 360
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->this$0:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$roundedIncrement:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity$6;->val$price:D

    move-wide/from16 v16, v0

    # invokes: Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->prepareItems(IDDD)V
    invoke-static/range {v10 .. v17}, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;->access$1200(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertActivity;IDDD)V

    .line 361
    return-void
.end method
