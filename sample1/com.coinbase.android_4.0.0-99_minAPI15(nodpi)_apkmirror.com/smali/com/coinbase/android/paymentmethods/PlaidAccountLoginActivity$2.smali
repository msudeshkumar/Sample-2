.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$2;
.super Ljava/lang/Object;
.source "PlaidAccountLoginActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->hideRoutingDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$2;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 162
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$2;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->mOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 152
    return-void
.end method
