.class Lcom/coinbase/android/ui/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    .line 344
    iput-object p1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 354
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 359
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 360
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 361
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    iget-boolean v0, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    iput-boolean v2, v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;->mFinishing:Z

    .line 365
    const-wide/16 v0, 0x535

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 366
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->val$ring:Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v2}, Lcom/coinbase/android/ui/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    iget-object v1, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    # getter for: Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$500(Lcom/coinbase/android/ui/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    rem-float/2addr v1, v2

    # setter for: Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$502(Lcom/coinbase/android/ui/MaterialProgressDrawable;F)F

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressDrawable$2;->this$0:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    const/4 v1, 0x0

    # setter for: Lcom/coinbase/android/ui/MaterialProgressDrawable;->mRotationCount:F
    invoke-static {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->access$502(Lcom/coinbase/android/ui/MaterialProgressDrawable;F)F

    .line 349
    return-void
.end method
