.class Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;
.super Ljava/lang/Object;
.source "PaymentMethodVerificationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->onResume()V
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
    .line 130
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 133
    new-instance v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v2, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;-><init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$JumioProfilesTask;->execute()V

    .line 134
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v0, v0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->verificationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method
