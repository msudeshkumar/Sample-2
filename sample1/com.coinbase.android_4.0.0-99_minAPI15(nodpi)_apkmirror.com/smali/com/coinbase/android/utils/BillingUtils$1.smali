.class final Lcom/coinbase/android/utils/BillingUtils$1;
.super Ljava/lang/Object;
.source "BillingUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/utils/BillingUtils;->showProgressBar(Landroid/content/Context;ZLandroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$overlayLayout:Landroid/widget/FrameLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Z)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/coinbase/android/utils/BillingUtils$1;->val$overlayLayout:Landroid/widget/FrameLayout;

    iput-boolean p2, p0, Lcom/coinbase/android/utils/BillingUtils$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 70
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/coinbase/android/utils/BillingUtils$1;->val$overlayLayout:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Lcom/coinbase/android/utils/BillingUtils$1;->val$show:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 65
    return-void

    .line 64
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 75
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 60
    return-void
.end method
