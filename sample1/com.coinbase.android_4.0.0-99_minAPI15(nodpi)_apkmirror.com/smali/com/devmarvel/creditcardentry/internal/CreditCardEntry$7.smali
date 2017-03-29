.class Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CreditCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrollToTarget(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

.field final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    iput-object p2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 354
    :cond_0
    return-void
.end method
