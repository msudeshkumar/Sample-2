.class Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$2;
.super Ljava/lang/Object;
.source "PaymentMethodVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v1, v1, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    sget-object v2, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->COMPLETED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v1, v2, :cond_0

    .line 115
    new-instance v0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;-><init>()V

    .line 116
    .local v0, "fragment":Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$2;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1001

    .line 118
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d00fe

    const-class v3, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .line 119
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 122
    .end local v0    # "fragment":Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    :cond_0
    return-void
.end method
