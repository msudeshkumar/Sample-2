.class Lcom/coinbase/android/pricechart/PriceChartFragment$1;
.super Ljava/lang/Object;
.source "PriceChartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/PriceChartFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/PriceChartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/PriceChartFragment;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$1;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 359
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$1;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v1, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$1;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v1, v1, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceHighlightSection:Landroid/widget/RelativeLayout;

    const-string v2, "translationY"

    iget-object v3, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$1;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v3, v3, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceHighlightSection:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    # invokes: Lcom/coinbase/android/pricechart/PriceChartFragment;->performAnimation(Landroid/view/View;Ljava/lang/String;FZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/coinbase/android/pricechart/PriceChartFragment;->access$400(Lcom/coinbase/android/pricechart/PriceChartFragment;Landroid/view/View;Ljava/lang/String;FZ)V

    .line 360
    iget-object v0, p0, Lcom/coinbase/android/pricechart/PriceChartFragment$1;->this$0:Lcom/coinbase/android/pricechart/PriceChartFragment;

    iget-object v0, v0, Lcom/coinbase/android/pricechart/PriceChartFragment;->mPriceHighlightSection:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 361
    return-void
.end method
