.class public Lcom/coinbase/android/identityVerification/CustomSurfaceView;
.super Landroid/view/SurfaceView;
.source "CustomSurfaceView.java"


# instance fields
.field public desiredHeight:I

.field public desiredWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->desiredWidth:I

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->desiredWidth:I

    iget v1, p0, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->desiredHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/identityVerification/CustomSurfaceView;->setMeasuredDimension(II)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_0
.end method
