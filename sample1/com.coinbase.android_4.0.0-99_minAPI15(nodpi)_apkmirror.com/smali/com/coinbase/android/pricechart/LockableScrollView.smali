.class Lcom/coinbase/android/pricechart/LockableScrollView;
.super Landroid/widget/ScrollView;
.source "LockableScrollView.java"


# instance fields
.field private mScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    .line 20
    return-void
.end method


# virtual methods
.method public isScrollable()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 39
    :pswitch_0
    iget-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/coinbase/android/pricechart/LockableScrollView;->mScrollable:Z

    .line 28
    return-void
.end method
