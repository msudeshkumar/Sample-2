.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2$1;
.super Ljava/lang/Object;
.source "PaymentMethodsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2$1;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2$1;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2$1;->this$1:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 255
    return-void
.end method
