.class public Lcom/coinbase/android/ui/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/ui/MaterialProgressDrawable$StartCurveInterpolator;,
        Lcom/coinbase/android/ui/MaterialProgressDrawable$EndCurveInterpolator;,
        Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;,
        Lcom/coinbase/android/ui/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x535

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field static final DEFAULT:I = 0x1

.field private static final EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$EndCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$EndCurveInterpolator;-><init>(Lcom/coinbase/android/ui/MaterialProgressDrawable$1;)V

    sput-object v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$StartCurveInterpolator;

    invoke-direct {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$StartCurveInterpolator;-><init>(Lcom/coinbase/android/ui/MaterialProgressDrawable$1;)V

    sput-object v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 73
    new-array v0, v3, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->COLORS:[I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 375
    new-instance v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$3;

    invoke-direct {v0, p0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$3;-><init>(Lcom/coinbase/android/ui/MaterialProgressDrawable;)V

    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 110
    iput-object p2, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 113
    new-instance v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    .line 114
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 116
    invoke-virtual {p0, v3}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->updateSizes(I)V

    .line 117
    invoke-direct {p0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setupAnimators()V

    .line 118
    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/ui/MaterialProgressDrawable;FLcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/ui/MaterialProgressDrawable;
    .param p1, "x1"    # F
    .param p2, "x2"    # Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->applyFinishTranslation(FLcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/coinbase/android/ui/MaterialProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/ui/MaterialProgressDrawable;

    .prologue
    .line 49
    iget v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotationCount:F

    return v0
.end method

.method static synthetic access$502(Lcom/coinbase/android/ui/MaterialProgressDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/ui/MaterialProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "ring"    # Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    .prologue
    .line 294
    invoke-virtual {p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v2, v4

    .line 296
    .local v2, "targetRotation":F
    invoke-virtual {p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    .line 297
    invoke-virtual {p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v4

    invoke-virtual {p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    .line 298
    .local v1, "startTrim":F
    invoke-virtual {p2, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 299
    invoke-virtual {p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 300
    invoke-virtual {p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 301
    .local v0, "rotation":F
    invoke-virtual {p2, v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 302
    return-void
.end method

.method private getRotation()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 7
    .param p1, "progressCircleWidth"    # D
    .param p3, "progressCircleHeight"    # D
    .param p5, "centerRadius"    # D
    .param p7, "strokeWidth"    # D
    .param p9, "arrowWidth"    # F
    .param p10, "arrowHeight"    # F

    .prologue
    .line 122
    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    .line 123
    .local v1, "ring":Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;
    iget-object v3, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 124
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 126
    .local v2, "screenDensity":F
    float-to-double v4, v2

    mul-double/2addr v4, p1

    iput-wide v4, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mWidth:D

    .line 127
    float-to-double v4, v2

    mul-double/2addr v4, p3

    iput-wide v4, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mHeight:D

    .line 128
    double-to-float v3, p7

    mul-float/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 129
    float-to-double v4, v2

    mul-double/2addr v4, p5

    invoke-virtual {v1, v4, v5}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 131
    mul-float v3, p9, v2

    mul-float v4, p10, v2

    invoke-virtual {v1, v3, v4}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 132
    iget-wide v4, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mWidth:D

    double-to-int v3, v4

    iget-wide v4, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mHeight:D

    double-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setInsets(II)V

    .line 133
    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    .line 306
    .local v1, "ring":Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;
    new-instance v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;-><init>(Lcom/coinbase/android/ui/MaterialProgressDrawable;Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V

    .line 341
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 342
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 343
    sget-object v2, Lcom/coinbase/android/ui/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 344
    new-instance v2, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;-><init>(Lcom/coinbase/android/ui/MaterialProgressDrawable;Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 373
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 215
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 216
    .local v1, "saveCount":I
    iget v2, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 217
    iget-object v2, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 218
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 219
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 248
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 5

    .prologue
    .line 253
    iget-object v2, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 254
    .local v2, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 256
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 257
    .local v1, "animator":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 258
    const/4 v4, 0x1

    .line 261
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :goto_1
    return v4

    .line 255
    .restart local v1    # "animator":Landroid/view/animation/Animation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "animator":Landroid/view/animation/Animation;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setAlpha(I)V

    .line 224
    return-void
.end method

.method public setArrowScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    .line 161
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 188
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 233
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 199
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 200
    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 180
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 181
    return-void
.end method

.method setRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 237
    iput p1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotation:F

    .line 238
    invoke-virtual {p0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->invalidateSelf()V

    .line 239
    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1
    .param p1, "startAngle"    # F
    .param p2, "endAngle"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 171
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 172
    return-void
.end method

.method public showArrow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 154
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 267
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 269
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mFinishing:Z

    .line 271
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 272
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 275
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 276
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x535

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setRotation(F)V

    .line 285
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 286
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 287
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRing:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 288
    return-void
.end method

.method public updateSizes(I)V
    .locals 14
    .param p1, "size"    # I
        .annotation build Lcom/coinbase/android/ui/MaterialProgressDrawable$ProgressDrawableSize;
        .end annotation
    .end param

    .prologue
    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    .line 140
    if-nez p1, :cond_0

    .line 141
    const-wide/high16 v6, 0x4029000000000000L    # 12.5

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    const-wide v6, 0x4021800000000000L    # 8.75

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v11, 0x40a00000    # 5.0f

    move-object v1, p0

    move-wide v2, v12

    move-wide v4, v12

    invoke-direct/range {v1 .. v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0
.end method
