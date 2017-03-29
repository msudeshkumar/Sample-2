.class Lcom/coinbase/zxing/client/android/CaptureActivity$2;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/zxing/client/android/CaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/zxing/client/android/CaptureActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/zxing/client/android/CaptureActivity;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 181
    check-cast p1, Lcom/coinbase/zxing/client/android/ScanTabsWidget;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/coinbase/zxing/client/android/ScanTabsWidget;->getTabSelected()Z

    move-result v1

    .line 182
    .local v1, "isAddress":Z
    if-eqz v1, :cond_2

    .line 183
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->qr_text:Ljava/lang/String;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$100(Lcom/coinbase/zxing/client/android/CaptureActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 203
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$300(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 189
    .local v0, "h":I
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->qrCode:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$400(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 190
    .local v2, "lllp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 192
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    :goto_1
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->qrCode:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$400(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->qrCode:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$400(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    .line 202
    .end local v0    # "h":I
    .end local v2    # "lllp":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    invoke-virtual {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->getViewfinderView()Lcom/coinbase/zxing/client/android/ViewfinderView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/coinbase/zxing/client/android/ViewfinderView;->hideScanner(Z)V

    goto :goto_0

    .line 194
    .restart local v0    # "h":I
    .restart local v2    # "lllp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 199
    .end local v0    # "h":I
    .end local v2    # "lllp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->addressView:Landroid/view/View;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$200(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/coinbase/zxing/client/android/CaptureActivity$2;->this$0:Lcom/coinbase/zxing/client/android/CaptureActivity;

    # getter for: Lcom/coinbase/zxing/client/android/CaptureActivity;->statusView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/coinbase/zxing/client/android/CaptureActivity;->access$300(Lcom/coinbase/zxing/client/android/CaptureActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
