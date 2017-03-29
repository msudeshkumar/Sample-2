.class Lcom/devmarvel/creditcardentry/internal/FlipAnimator;
.super Landroid/view/animation/Animation;
.source "FlipAnimator.java"


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private final centerX:F

.field private final centerY:F

.field private forward:Z

.field private fromView:Landroid/view/View;

.field private toView:Landroid/view/View;

.field private visibilitySwapped:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 21
    iput-boolean v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->forward:Z

    .line 41
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->fromView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->toView:Landroid/view/View;

    .line 43
    move-object v0, p2

    .line 44
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    move-object v0, p1

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->centerX:F

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->centerY:F

    .line 50
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->setDuration(J)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->setFillAfter(Z)V

    .line 52
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v10, 0x0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 73
    float-to-double v4, p1

    mul-double v2, v6, v4

    .line 74
    .local v2, "radians":D
    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v2

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 81
    .local v0, "degrees":F
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 82
    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v0, v4

    .line 84
    iget-boolean v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->visibilitySwapped:Z

    if-nez v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->fromView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->toView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->visibilitySwapped:Z

    .line 92
    :cond_0
    iget-boolean v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->forward:Z

    if-eqz v4, :cond_1

    .line 93
    neg-float v0, v0

    .line 95
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 97
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 98
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->camera:Landroid/graphics/Camera;

    const-wide v6, 0x4062c00000000000L    # 150.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v4, v10, v10, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 99
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 100
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 101
    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 103
    iget v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->centerX:F

    neg-float v4, v4

    iget v5, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->centerY:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 104
    iget v4, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->centerX:F

    iget v5, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->centerY:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 105
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 66
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->camera:Landroid/graphics/Camera;

    .line 67
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->forward:Z

    .line 57
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->toView:Landroid/view/View;

    .line 58
    .local v0, "temp":Landroid/view/View;
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->fromView:Landroid/view/View;

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->toView:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->fromView:Landroid/view/View;

    .line 60
    return-void
.end method
