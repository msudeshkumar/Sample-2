.class Lcom/coinbase/android/pricechart/ChartsFragment$3;
.super Ljava/lang/Object;
.source "ChartsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/ChartsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/ChartsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/coinbase/android/pricechart/ChartsFragment$3;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment$3;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    iget-object v1, v1, Lcom/coinbase/android/pricechart/ChartsFragment;->chartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 106
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/coinbase/android/pricechart/ChartsFragment$3;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    iget-object v1, v1, Lcom/coinbase/android/pricechart/ChartsFragment;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coinbase/android/pricechart/ChartsFragment$3;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/pricechart/ChartsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-static {v2, v3}, Lcom/coinbase/android/utils/Utils;->getPixels(Landroid/content/Context;I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    return-void
.end method
