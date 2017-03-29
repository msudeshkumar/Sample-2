.class Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;
.super Ljava/lang/Object;
.source "PaymentMethodsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 241
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->isExpanded()Z

    move-result v0

    .line 243
    .local v0, "expanded":Z
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 245
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 248
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2$1;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;)V

    invoke-static {v1, v3, v4, v2}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    goto :goto_0
.end method
