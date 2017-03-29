.class Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;->addLayerTypeListener(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->this$1:Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams;

    iput-object p2, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 490
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 494
    iget-object v0, p0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu$LayoutParams$1;->val$view:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 495
    return-void
.end method
