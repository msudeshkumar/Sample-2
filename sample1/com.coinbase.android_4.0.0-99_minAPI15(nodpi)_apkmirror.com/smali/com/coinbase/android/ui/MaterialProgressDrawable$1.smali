.class Lcom/coinbase/android/ui/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/ui/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/coinbase/android/ui/MaterialProgressDrawable;Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/ui/MaterialProgressDrawable;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    iget-boolean v11, v11, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v11, :cond_0

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    move/from16 v0, p1

    # invokes: Lcom/coinbase/android/ui/MaterialProgressDrawable;->applyFinishTranslation(FLcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V
    invoke-static {v11, v0, v12}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$200(Lcom/coinbase/android/ui/MaterialProgressDrawable;FLcom/coinbase/android/ui/MaterialProgressDrawable$Ring;)V

    .line 339
    :goto_0
    return-void

    .line 315
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    .line 316
    invoke-virtual {v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v16

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    .line 315
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 317
    .local v5, "minProgressArc":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v8

    .line 318
    .local v8, "startingEndTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v10

    .line 319
    .local v10, "startingTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v9

    .line 323
    .local v9, "startingRotation":F
    const v11, 0x3f4ccccd    # 0.8f

    sub-float v4, v11, v5

    .line 325
    .local v4, "minArc":F
    # getter for: Lcom/coinbase/android/ui/MaterialProgressDrawable;->START_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v11, v4

    add-float v2, v8, v11

    .line 326
    .local v2, "endTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 328
    const v11, 0x3f4ccccd    # 0.8f

    .line 329
    # getter for: Lcom/coinbase/android/ui/MaterialProgressDrawable;->END_CURVE_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v12

    move/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float v7, v10, v11

    .line 330
    .local v7, "startTrim":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v7}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 332
    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v11, v11, p1

    add-float v6, v9, v11

    .line 333
    .local v6, "rotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v11, v6}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setRotation(F)V

    .line 335
    const/high16 v11, 0x43100000    # 144.0f

    mul-float v11, v11, p1

    const/high16 v12, 0x44340000    # 720.0f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    .line 336
    # getter for: Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v13}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$500(Lcom/coinbase/android/ui/MaterialProgressDrawable;)F

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 337
    .local v3, "groupRotation":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable$1;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {v11, v3}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setRotation(F)V

    goto/16 :goto_0
.end method
