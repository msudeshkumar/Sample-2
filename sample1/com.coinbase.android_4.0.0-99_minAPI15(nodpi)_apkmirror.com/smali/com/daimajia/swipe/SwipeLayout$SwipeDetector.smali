.class Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/daimajia/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1085
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDoubleClickListener:Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$900(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1087
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getCurrentBottomView()Landroid/view/View;

    move-result-object v0

    .line 1088
    .local v0, "bottom":Landroid/view/View;
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v3}, Lcom/daimajia/swipe/SwipeLayout;->getSurfaceView()Landroid/view/View;

    move-result-object v1

    .line 1089
    .local v1, "surface":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 1091
    move-object v2, v0

    .line 1095
    .local v2, "target":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mDoubleClickListener:Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;
    invoke-static {v3}, Lcom/daimajia/swipe/SwipeLayout;->access$900(Lcom/daimajia/swipe/SwipeLayout;)Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;

    move-result-object v5

    iget-object v6, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    if-ne v2, v1, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v5, v6, v3}, Lcom/daimajia/swipe/SwipeLayout$DoubleClickListener;->onDoubleClick(Lcom/daimajia/swipe/SwipeLayout;Z)V

    .line 1097
    .end local v0    # "bottom":Landroid/view/View;
    .end local v1    # "surface":Landroid/view/View;
    .end local v2    # "target":Landroid/view/View;
    :cond_0
    return v4

    .line 1093
    .restart local v0    # "bottom":Landroid/view/View;
    .restart local v1    # "surface":Landroid/view/View;
    :cond_1
    move-object v2, v1

    .restart local v2    # "target":Landroid/view/View;
    goto :goto_0

    .line 1095
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # getter for: Lcom/daimajia/swipe/SwipeLayout;->mClickToClose:Z
    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->access$700(Lcom/daimajia/swipe/SwipeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    # invokes: Lcom/daimajia/swipe/SwipeLayout;->isTouchOnSurface(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lcom/daimajia/swipe/SwipeLayout;->access$800(Lcom/daimajia/swipe/SwipeLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$SwipeDetector;->this$0:Lcom/daimajia/swipe/SwipeLayout;

    invoke-virtual {v0}, Lcom/daimajia/swipe/SwipeLayout;->close()V

    .line 1081
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
