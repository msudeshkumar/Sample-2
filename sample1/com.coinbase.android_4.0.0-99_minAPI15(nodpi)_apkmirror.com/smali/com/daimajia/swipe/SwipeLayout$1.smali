.class Lcom/daimajia/swipe/SwipeLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isCloseBeforeDrag:Z

.field final synthetic this$0:Lcom/daimajia/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->isCloseBeforeDrag:Z

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 219
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    .end local p2    # "left":I
    :cond_0
    :goto_0
    return p2

    .line 222
    .restart local p2    # "left":I
    :pswitch_0
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_0

    .line 229
    :pswitch_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_2

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_0

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 236
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_0

    .line 241
    :pswitch_4
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_0

    .line 246
    :pswitch_5
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v1}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 236
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 259
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_3

    .line 260
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 306
    .end local p2    # "top":I
    :cond_0
    :goto_0
    return p2

    .line 263
    .restart local p2    # "top":I
    :pswitch_0
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    add-int/2addr v2, v3

    if-le p2, v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    add-int p2, v2, v3

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_2

    .line 271
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    sub-int p2, v2, v3

    goto :goto_0

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-le p2, v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "surfaceView":Landroid/view/View;
    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 280
    .local v1, "surfaceViewTop":I
    :goto_1
    sget-object v2, Lcom/daimajia/swipe/SwipeLayout$4;->$SwitchMap$com$daimajia$swipe$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v3

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    invoke-static {v2}, Lcom/daimajia/swipe/SwipeLayout;->access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v2

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v2, v3, :cond_5

    .line 286
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-le p2, v2, :cond_0

    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 279
    .end local v1    # "surfaceViewTop":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1

    .line 283
    .restart local v1    # "surfaceViewTop":I
    :pswitch_4
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 288
    :cond_5
    add-int v2, v1, p3

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 289
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 290
    :cond_6
    add-int v2, v1, p3

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v4}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 291
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    add-int p2, v2, v3

    goto/16 :goto_0

    .line 295
    :pswitch_5
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    invoke-static {v2}, Lcom/daimajia/swipe/SwipeLayout;->access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v2

    sget-object v3, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v2, v3, :cond_7

    .line 296
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    sub-int p2, v2, v3

    goto/16 :goto_0

    .line 299
    :cond_7
    add-int v2, v1, p3

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    if-lt v2, v3, :cond_8

    .line 300
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_0

    .line 301
    :cond_8
    add-int v2, v1, p3

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v4}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    .line 302
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v3

    sub-int p2, v2, v3

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 280
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDragDistance:I
    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->access$100(Lcom/daimajia/swipe/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 15
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 342
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v10

    .line 343
    .local v10, "surfaceView":Landroid/view/View;
    if-nez v10, :cond_0

    .line 390
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v2

    .line 345
    .local v2, "currentBottomView":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 346
    .local v4, "evLeft":I
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v5

    .line 347
    .local v5, "evRight":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v6

    .line 348
    .local v6, "evTop":I
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 349
    .local v3, "evBottom":I
    move-object/from16 v0, p1

    if-ne v0, v10, :cond_4

    .line 351
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v11, v12, :cond_2

    if-eqz v2, :cond_2

    .line 352
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-eq v11, v12, :cond_1

    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v11, v12, :cond_3

    .line 353
    :cond_1
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 385
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11, v4, v6, v5, v3}, Lcom/daimajia/swipe/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 387
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v11, v4, v6, v0, v1}, Lcom/daimajia/swipe/SwipeLayout;->dispatchSwipeEvent(IIII)V

    .line 389
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    goto :goto_0

    .line 355
    :cond_3
    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 359
    :cond_4
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 361
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mShowMode:Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$200(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    if-ne v11, v12, :cond_5

    .line 362
    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 363
    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 365
    :cond_5
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    iget-object v12, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v12}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v12

    # invokes: Lcom/daimajia/swipe/SwipeLayout;->computeBottomLayDown(Lcom/daimajia/swipe/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    invoke-static {v11, v12}, Lcom/daimajia/swipe/SwipeLayout;->access$400(Lcom/daimajia/swipe/SwipeLayout;Lcom/daimajia/swipe/SwipeLayout$DragEdge;)Landroid/graphics/Rect;

    move-result-object v9

    .line 366
    .local v9, "rect":Landroid/graphics/Rect;
    if-eqz v2, :cond_6

    .line 367
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    iget v13, v9, Landroid/graphics/Rect;->right:I

    iget v14, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 370
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int v7, v11, p4

    .local v7, "newLeft":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    add-int v8, v11, p5

    .line 372
    .local v8, "newTop":I
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Left:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v11, v12, :cond_8

    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 373
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v7

    .line 381
    :cond_7
    :goto_2
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v12}, Lcom/daimajia/swipe/SwipeLayout;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v10, v7, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 374
    :cond_8
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Right:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v11, v12, :cond_9

    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v11

    if-le v7, v11, :cond_9

    .line 375
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingLeft()I

    move-result v7

    goto :goto_2

    .line 376
    :cond_9
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Top:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v11, v12, :cond_a

    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v11

    if-ge v8, v11, :cond_a

    .line 377
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v8

    goto :goto_2

    .line 378
    :cond_a
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mCurrentDragEdge:Lcom/daimajia/swipe/SwipeLayout$DragEdge;
    invoke-static {v11}, Lcom/daimajia/swipe/SwipeLayout;->access$000(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    move-result-object v11

    sget-object v12, Lcom/daimajia/swipe/SwipeLayout$DragEdge;->Bottom:Lcom/daimajia/swipe/SwipeLayout$DragEdge;

    if-ne v11, v12, :cond_7

    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v11

    if-le v8, v11, :cond_7

    .line 379
    iget-object v11, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v11}, Lcom/daimajia/swipe/SwipeLayout;->getPaddingTop()I

    move-result v8

    goto :goto_2
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 331
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 332
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mSwipeListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/daimajia/swipe/SwipeLayout;->access$300(Lcom/daimajia/swipe/SwipeLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;

    .line 333
    .local v1, "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-interface {v1, v2, p2, p3}, Lcom/daimajia/swipe/SwipeLayout$SwipeListener;->onHandRelease(Lcom/daimajia/swipe/SwipeLayout;FF)V

    goto :goto_0

    .line 335
    .end local v1    # "l":Lcom/daimajia/swipe/SwipeLayout$SwipeListener;
    :cond_0
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    iget-boolean v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->isCloseBeforeDrag:Z

    invoke-virtual {v2, p2, p3, v3}, Lcom/daimajia/swipe/SwipeLayout;->processHandRelease(FFZ)V

    .line 337
    iget-object v2, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v2}, Lcom/daimajia/swipe/SwipeLayout;->invalidate()V

    .line 338
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v3

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getBottomViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v1

    .line 312
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 313
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$1;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getOpenStatus()Lcom/daimajia/swipe/SwipeLayout$Status;

    move-result-object v3

    sget-object v4, Lcom/daimajia/swipe/SwipeLayout$Status;->Close:Lcom/daimajia/swipe/SwipeLayout$Status;

    if-ne v3, v4, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/daimajia/swipe/SwipeLayout$1;->isCloseBeforeDrag:Z

    .line 315
    :cond_1
    return v0

    .end local v0    # "result":Z
    :cond_2
    move v0, v2

    .line 311
    goto :goto_0

    .restart local v0    # "result":Z
    :cond_3
    move v1, v2

    .line 313
    goto :goto_1
.end method
